package com.classy.instagram.auth.controller

import com.classy.instagram.auth.dto.SignUpForm
import com.classy.instagram.auth.service.AuthService
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.ModelAttribute
import org.springframework.web.bind.annotation.PostMapping

@Controller
class AuthController(
    private val authService: AuthService
) {
    /**
     * 로그인 페이지
     */
    @GetMapping("/login")
    fun loginPage() = "login"

    /**
     * 회원가입 페이지
     */
    @GetMapping("/signup")
    fun signupPage() = "signup"

    /**
     * 회원가입 Process
     */
    @PostMapping("/signup")
    fun signup(@ModelAttribute signUpForm: SignUpForm): String {
        val user = authService.signup(signUpForm)
        // Session에 저장
        SecurityContextHolder.getContext().authentication = UsernamePasswordAuthenticationToken(user, user.password, user.authorities)
        return "redirect:/"
    }
}
