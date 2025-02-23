package com.classy.placelog.article.service

import com.classy.placelog.article.entity.Article
import com.classy.placelog.article.entity.ArticleLike
import com.classy.placelog.article.repository.ArticleLikeRepository
import com.classy.placelog.article.repository.ArticleRepository
import com.classy.placelog.user.entity.User
import com.classy.placelog.user.repository.UserRepository
import org.springframework.data.repository.findByIdOrNull
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class ArticleLikeService(
    private val articleLikeRepository: ArticleLikeRepository,
    private val articleRepository: ArticleRepository,
    private val userRepository: UserRepository,
) {
    @Transactional
    fun likeArticle(
        articleId: Long,
        userId: String,
    ): Long {
        val user: User = userRepository.findByIdOrNull(userId)
            ?: throw IllegalArgumentException("User not found")

        val article: Article = articleRepository.findByIdOrNull(articleId)
            ?: throw IllegalArgumentException("Article not found")

        val articleLike: ArticleLike = ArticleLike(
            id = ArticleLike.ArticleLikeId(
                article = article,
                author = user,
            ),
        )

        articleLikeRepository.save(articleLike)
        articleLikeRepository.syncLikeCount(articleId)
        return articleLikeRepository.countByIdArticleId(articleId)
    }

    @Transactional
    fun unlikeArticle(
        articleId: Long,
        userId: String,
    ): Long {
        val articleLike: ArticleLike = articleLikeRepository.findByIdArticleIdAndIdAuthorEmail(
            id = articleId,
            email = userId,
        )

        articleLikeRepository.delete(articleLike)
        articleLikeRepository.syncLikeCount(articleId)
        return articleLikeRepository.countByIdArticleId(articleId)
    }

    @Transactional(readOnly = true)
    fun isLiked(
        articleId: Long,
        userId: String,
    ): Boolean {
        return articleLikeRepository.existsByIdArticleIdAndIdAuthorEmail(
            id = articleId,
            email = userId,
        )
    }
}
