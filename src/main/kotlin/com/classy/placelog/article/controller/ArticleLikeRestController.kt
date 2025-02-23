package com.classy.placelog.article.controller

import com.classy.placelog.article.service.ArticleLikeService
import com.classy.placelog.configuration.SwaggerConfig
import io.github.oshai.kotlinlogging.KotlinLogging
import io.swagger.v3.oas.annotations.security.SecurityRequirement
import io.swagger.v3.oas.annotations.tags.Tag
import org.springframework.security.core.annotation.AuthenticationPrincipal
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.web.bind.annotation.DeleteMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@Tag(name = "게시글 좋아요 API")
@RestController
@RequestMapping("/api/article/{articleId}/like")
@SecurityRequirement(name = SwaggerConfig.BASIC_AUTH)
class ArticleLikeRestController(
    private val articleLikeService: ArticleLikeService,
) {
    @PostMapping
    fun likeArticles(
        @PathVariable articleId: Long,
        @AuthenticationPrincipal userDetails: UserDetails,
    ): Long {
        log.info { "Article 좋아요 Article ID: $articleId, User Email: ${userDetails.username}" }
        return articleLikeService.likeArticle(articleId, userDetails.username)
    }

    @DeleteMapping
    fun unlikeArticles(
        @PathVariable articleId: Long,
        @AuthenticationPrincipal userDetails: UserDetails,
    ): Long {
        return articleLikeService.unlikeArticle(articleId, userDetails.username)
    }

    companion object {
        val log = KotlinLogging.logger { }
    }
}
