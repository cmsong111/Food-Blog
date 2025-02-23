package com.classy.placelog.user.controller

import com.classy.placelog.user.service.UserService
import io.swagger.v3.oas.annotations.Hidden
import java.nio.file.attribute.UserPrincipal
import org.springframework.security.core.annotation.AuthenticationPrincipal
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam

@Hidden
@Controller
@RequestMapping("/users")
class UserController(
    private val userService: UserService,
) {
    @GetMapping
    fun searchUsers(
        @RequestParam nickname: String,
        model: Model,
    ): String {
        TODO("Not yet implemented")
    }

    @GetMapping("/{email}")
    fun getUserProfile(
        @PathVariable email: String,
        model: Model,
    ): String {
        model.addAttribute("user", userService.getUser(email))
        return "user/profile"
    }

    @GetMapping("/{email}/edit")
    fun editUserProfile(
        @PathVariable email: String,
        @AuthenticationPrincipal userPrincipal: UserPrincipal,
        model: Model,
    ): String {
        model.addAttribute("user", userService.getUser(email))
        return "user/editProfile"
    }

    @PostMapping("/{email}/edit")
    fun editUserProfile(
        @PathVariable email: String,
        @AuthenticationPrincipal userPrincipal: UserPrincipal,
    ): String {
        TODO("Not yet implemented")
    }
}
