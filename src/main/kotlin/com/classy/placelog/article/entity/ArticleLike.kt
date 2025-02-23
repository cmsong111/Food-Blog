package com.classy.placelog.article.entity

import com.classy.placelog.user.entity.User
import jakarta.persistence.Embeddable
import jakarta.persistence.EmbeddedId
import jakarta.persistence.Entity
import jakarta.persistence.FetchType
import jakarta.persistence.ManyToOne

@Entity
class ArticleLike(
    @EmbeddedId
    val id: ArticleLikeId,
) {
    @Embeddable
    data class ArticleLikeId(
        @ManyToOne(fetch = FetchType.LAZY)
        val article: Article,
        @ManyToOne(fetch = FetchType.LAZY)
        val author: User,
    )

}

