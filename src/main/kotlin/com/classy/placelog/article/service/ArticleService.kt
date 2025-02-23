package com.classy.placelog.article.service

import com.classy.placelog.article.entity.Article
import com.classy.placelog.article.repository.ArticleRepository
import com.classy.placelog.user.repository.UserRepository
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class ArticleService(
    private val userRepository: UserRepository,
    private val articleRepository: ArticleRepository,
) {
    @Transactional(readOnly = true)
    fun getArticles(pageable: Pageable): Page<Article> {
        return articleRepository.findAll(pageable)
    }

    @Transactional(readOnly = true)
    fun getArticle(articleId: Long): Article {
        return articleRepository.findById(articleId)
            .orElseThrow { IllegalArgumentException("게시글이 존재하지 않습니다.") }
    }

    @Transactional
    fun createArticle(): Article {
        TODO("Not yet implemented")
    }

    @Transactional
    fun updateArticle(): Article {
        TODO("Not yet implemented")
    }

    @Transactional
    fun deleteArticle() {
        TODO("Not yet implemented")
    }
}
