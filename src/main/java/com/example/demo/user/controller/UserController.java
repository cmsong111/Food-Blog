package com.example.demo.user.controller;

import com.example.demo.user.dto.SignUpForm;
import com.example.demo.user.dto.User;
import com.example.demo.user.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
@Tag(name = "User", description = "사용자 관련 API")
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/login")
    @Operation(summary = "로그인")
    @ApiResponse(responseCode = "200", description = "로그인 성공")
    public String login(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {

        User user = userService.login(email, password);
        model.addAttribute("user", user);
        return "redirect:/index";

    }

    @PostMapping("/SignUp")
    @Operation(summary = "회원가입")
    @ApiResponse(responseCode = "200", description = "회원가입 성공")
    public String signUp(SignUpForm signUpFormDto, Model model) {
        User user = userService.signUp(signUpFormDto);
        model.addAttribute("user", user);
        return "redirect:/index";
    }

    @PostMapping("/logout")
    @Operation(summary = "로그아웃")
    @ApiResponse(responseCode = "200", description = "로그아웃 성공")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/index";
    }
}
