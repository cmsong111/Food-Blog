package com.example.demo.user.controller;

import com.example.demo.configuration.SessionConfig;
import com.example.demo.user.dto.LoginForm;
import com.example.demo.user.dto.SignUpForm;
import com.example.demo.user.dto.User;
import com.example.demo.user.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
    public String login(
            LoginForm loginForm,
            RedirectAttributes model,
            HttpServletRequest request) {
        log.info("login Post 호출");


        User user = userService.login(loginForm);
        model.addFlashAttribute("user", user);
        HttpSession session = request.getSession();
        session.setAttribute(SessionConfig.LOGIN_MEMBER, user);
        return "redirect:/";

    }

    @GetMapping("/signup")
    @Operation(summary = "회원가입 페이지")
    @ApiResponse(responseCode = "200", description = "회원가입 페이지")
    public String signUpPage() {
        log.info("signUpPage GET requested");
        return "signup";
    }


    @PostMapping("/signup")
    @Operation(summary = "회원가입")
    @ApiResponse(responseCode = "200", description = "회원가입 성공")
    public String signUp(SignUpForm signUpFormDto,
                         RedirectAttributes model,
                         HttpServletRequest request) {
        log.info("signup Post 호출");
        User user = userService.signUp(signUpFormDto);
        model.addFlashAttribute("user", user);
        HttpSession session = request.getSession();
        session.setAttribute(SessionConfig.LOGIN_MEMBER, user);
        return "redirect:/";
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
        User user = (User) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        model.addAttribute("user", user);
        return "profile";
    }
}
