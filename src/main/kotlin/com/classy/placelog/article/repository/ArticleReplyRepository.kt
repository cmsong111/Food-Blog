package com.classy.placelog.article.repository

import com.classy.placelog.article.entity.ArticleReply
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface ArticleReplyRepository : JpaRepository<ArticleReply, Long> {
    fun findByArticleId(articleId: Long): List<ArticleReply>
}
