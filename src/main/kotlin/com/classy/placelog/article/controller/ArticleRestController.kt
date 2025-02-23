package com.classy.placelog.article.controller

import com.classy.placelog.article.entity.Article
import com.classy.placelog.article.service.ArticleService
import io.swagger.v3.oas.annotations.Operation
import io.swagger.v3.oas.annotations.tags.Tag
import org.springdoc.core.annotations.ParameterObject
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.domain.Sort
import org.springframework.data.web.PageableDefault
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api/articles")
@Tag(name = "Article API", description = "게시글 API")
class ArticleRestController(
    private val articleService: ArticleService,
) {
    @GetMapping
    @Operation(summary = "게시글 목록 조회")
    fun getArticles(
        @PageableDefault(sort = ["createdAt"], direction = Sort.Direction.DESC)
        @ParameterObject pageable: Pageable
    ): Page<Article> {
        return articleService.getArticles(pageable)
    }
}
