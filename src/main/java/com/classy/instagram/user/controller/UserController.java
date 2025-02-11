package com.classy.instagram.user.controller;

import com.classy.instagram.article.dto.ArticleInfo;
import com.classy.instagram.article.service.ArticleService;
import com.classy.instagram.configuration.SessionConfig;
import com.classy.instagram.user.dto.UserDto;
import com.classy.instagram.user.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user")
@Tag(name = "User", description = "사용자 관련 API")
@Slf4j
public class UserController {

    private final UserService userService;
    private final ArticleService articleService;

    @Autowired
    public UserController(UserService userService, ArticleService articleService) {
        this.userService = userService;
        this.articleService = articleService;
    }


    @GetMapping("/profile/{email}")
    @Operation(summary = "프로필 페이지")
    @ApiResponse(responseCode = "200", description = "프로필 페이지")
    public String profilePage(Model model, @PathVariable String email) {
        log.info("profilePage GET 호출");

        UserDto user = userService.findById(email);
        List<ArticleInfo> userArticles = articleService.getArticlesByEmail(user.getEmail());

        model.addAttribute("user", user);
        model.addAttribute("userArticles", userArticles);
        return "profile";
    }

    @GetMapping("/profile/edit")
    @Operation(summary = "프로필 수정 페이지 요청")
    @ApiResponse(responseCode = "200", description = "프로필 수정 페이지")
    public String profileEditPage(Model model, HttpSession session) {
        log.info("profileEditPage GET 호출");

        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        model.addAttribute("user", user);
        return "userEditForm";
    }

    @PatchMapping("/profile/edit")
    @Operation(summary = "프로필 수정")
    @ApiResponse(responseCode = "200", description = "프로필 수정 성공")
    public ResponseEntity<Object> profileEdit(@RequestBody UserDto userDto, HttpSession session) {
        log.info("profileEditPage PATCH 호출");
        log.info("입려된 유저 정보: {}", userDto);

        // Session 과 UserDto 를 비교해서 같은지 확인
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);

        if (user == null) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
        if (!user.getEmail().equals(userDto.getEmail())) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }

        UserDto saved = userService.update(userDto);
        log.info("saved: {}", saved);

        session.setAttribute(SessionConfig.LOGIN_MEMBER, saved);
        log.info("session: {}", session.getAttribute(SessionConfig.LOGIN_MEMBER));
        return ResponseEntity.ok(saved);
    }

    @GetMapping("/Search")
    @Operation(summary = "유저 검색")
    @ApiResponse(responseCode = "200", description = "유저 검색 성공")
    public String userSearch(Model model, @RequestParam String keyword) {
        log.info("userSearch GET 호출");
        log.info("keyword: {}", keyword);

        List<UserDto> users = userService.findUserList(keyword);
        log.info("users: {}", users);

        model.addAttribute("users", users);
        return "userSearch";
    }
}
