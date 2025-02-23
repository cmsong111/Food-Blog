package com.classy.placelog.article.controller

import io.swagger.v3.oas.annotations.Hidden
import java.nio.file.attribute.UserPrincipal
import org.springframework.security.core.annotation.AuthenticationPrincipal
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping

@Hidden
@Controller
class ArticleController {


    @GetMapping("articles-post")
    fun createArticle(model: Model): String {
        return "article/createArticle"
    }

    @PostMapping("articles-post")
    fun createArticle(
        @AuthenticationPrincipal userDetails: UserDetails,
    ): String {
        return "redirect:/articles"
    }

    @GetMapping("articles/{id}")
    fun articleDetail(
        @PathVariable id: Long,
        model: Model,
    ): String {
        return "article/articleDetail"
    }


    @GetMapping("articles/{id}/edit")
    fun getArticleEditPage(
        @PathVariable id: Long,
        @AuthenticationPrincipal userDetails: UserDetails,
        model: Model,
    ): String {
        return "article/articleDetail"
    }

    @PostMapping("articles/{id}/edit")
    fun editArticle(
        @PathVariable id: Long,
        @AuthenticationPrincipal userDetails: UserDetails,
    ): String {
        return "redirect:/articles/${id}"
    }

    @PostMapping("articles/{id}/delete")
    fun deleteArticle(
        @PathVariable id: Long,
        @AuthenticationPrincipal userDetails: UserDetails,
        model: Model,
    ): String {
        return "redirect:/articles"
    }
}
