package com.classy.placelog.article.entity

import com.classy.placelog.common.entity.BaseEntity
import com.classy.placelog.user.entity.User
import jakarta.persistence.Column
import jakarta.persistence.Entity
import jakarta.persistence.FetchType
import jakarta.persistence.GeneratedValue
import jakarta.persistence.GenerationType
import jakarta.persistence.Id
import jakarta.persistence.ManyToOne

@Entity(name = "article_replies")
class ArticleReply(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0L,
    @Column(columnDefinition = "TEXT")
    var content: String,
    @ManyToOne(fetch = FetchType.LAZY)
    val article: Article,
    @ManyToOne(fetch = FetchType.LAZY)
    val author: User,
) : BaseEntity() {
}
