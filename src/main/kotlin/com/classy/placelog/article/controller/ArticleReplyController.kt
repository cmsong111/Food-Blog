package com.classy.placelog.article.controller

import io.swagger.v3.oas.annotations.Hidden
import org.springframework.security.core.annotation.AuthenticationPrincipal
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestMapping
import java.nio.file.attribute.UserPrincipal

@Hidden
@Controller
@RequestMapping("articles/{articleId}/reply")
class ArticleReplyController() {
    @PostMapping
    fun createReply(
        @PathVariable articleId: Long,
        @AuthenticationPrincipal userPrincipal: UserPrincipal,
    ): String {
        TODO("Not yet implemented")
    }

    @PostMapping("/{replyId}/edit")
    fun updateReply(
        @PathVariable articleId: Long,
        @PathVariable replyId: Long,
        @AuthenticationPrincipal userPrincipal: UserPrincipal,
    ): String {
        TODO("Not yet implemented")
    }

    @PostMapping("/{replyId}/delete")
    fun deleteReply(
        @PathVariable articleId: Long,
        @PathVariable replyId: Long,
        @AuthenticationPrincipal userPrincipal: UserPrincipal,
    ): String {
        TODO("Not yet implemented")
    }
}
