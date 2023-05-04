package com.example.demo.user.controller;

import com.example.demo.configuration.SessionConfig;
import com.example.demo.user.dto.LoginForm;
import com.example.demo.user.dto.SignUpForm;
import com.example.demo.user.dto.UserDto;
import com.example.demo.user.service.UserService;
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

@Controller
@RequestMapping("/user")
@Tag(name = "User", description = "사용자 관련 API")
@Slf4j
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
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

    @GetMapping("/profile")
    @Operation(summary = "프로필 페이지")
    @ApiResponse(responseCode = "200", description = "프로필 페이지")
    public String profilePage(Model model, HttpServletRequest request) {
        log.info("profilePage GET 호출");
        HttpSession session = request.getSession();
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        model.addAttribute("user", user);
        return "profile";
    }
}
