package com.classy.instagram.user.controller;

import com.classy.instagram.article.dto.ArticleInfo;
import com.classy.instagram.article.service.ArticleService;
import com.classy.instagram.user.service.UserService;
import com.classy.instagram.configuration.SessionConfig;
import com.classy.instagram.user.dto.LoginForm;
import com.classy.instagram.user.dto.SignUpForm;
import com.classy.instagram.user.dto.UserDto;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

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

    @GetMapping("/login")
    @Operation(summary = "로그인 페이지")
    @ApiResponse(responseCode = "200", description = "로그인 페이지")
    public String loginPage() {
        log.info("loginPage GET 호출");
        return "login";
    }

    @PostMapping("/login")
    @Operation(summary = "로그인")
    @ApiResponse(responseCode = "200", description = "로그인 성공")
    @ResponseBody
    public ResponseEntity<Object> Login(@RequestBody LoginForm loginForm, HttpServletRequest request) {
        log.info("api login Post Requested");
        HttpSession session = request.getSession();

        if (session.getAttribute(SessionConfig.LOGIN_MEMBER) != null) {
            session.removeAttribute(SessionConfig.LOGIN_MEMBER);
        }

        UserDto user = userService.login(loginForm);
        log.info("user: {}", user);
        if (user == null) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        } else {
            session.setAttribute(SessionConfig.LOGIN_MEMBER, user);
            return ResponseEntity.ok(user);
        }
    }

    @GetMapping("/signup")
    @Operation(summary = "회원가입 페이지 요청")
    @ApiResponse(responseCode = "200", description = "회원가입 페이지")
    public String signUpPage() {
        log.info("signUpPage Get requested");
        return "signup";
    }


    @PostMapping("/signup")
    @Operation(summary = "회원가입")
    @ApiResponse(responseCode = "200", description = "회원가입 성공")
    public ResponseEntity<Object> signUp(@RequestBody SignUpForm signUpFormDto,
                                         HttpServletRequest request) {
        log.info("signup Post 호출");
        HttpSession session = request.getSession();

        UserDto user = userService.signUp(signUpFormDto);

        session.setAttribute(SessionConfig.LOGIN_MEMBER, user);
        return ResponseEntity.ok(user);
    }

    @GetMapping("/logout")
    @Operation(summary = "로그아웃")
    @ApiResponse(responseCode = "200", description = "로그아웃 성공")
    public String logout(HttpSession session) {
        log.info("logout Post 호출");
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("/profile/{email}")
    @Operation(summary = "프로필 페이지")
    @ApiResponse(responseCode = "200", description = "프로필 페이지")
    public String profilePage(Model model, HttpSession session, @PathVariable String email) {
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

        if (user == null){
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
        if (!user.getEmail().equals(userDto.getEmail())) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }

        UserDto saved  =  userService.update(userDto);
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
