package com.classy.placelog.article.service

import com.classy.placelog.article.entity.ArticleReply
import com.classy.placelog.article.repository.ArticleReplyRepository
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class ArticleReplyService(
    private val articleReplyRepository: ArticleReplyRepository
) {

    @Transactional
    fun addArticleReply(
        articleId: Long,
    ): ArticleReply {
        TODO("Not yet implemented")
    }

    @Transactional
    fun editArticleReply(
        articleReplyId: Long,
    ): ArticleReply {
        TODO("Not yet implemented")
    }

    @Transactional
    fun deleteArticleReply(
        articleReplyId: Long,
    ) {
        TODO("Not yet implemented")
    }
}
