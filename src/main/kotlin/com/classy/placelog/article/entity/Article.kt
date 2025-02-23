package com.classy.placelog.article.entity

import com.classy.placelog.common.entity.BaseEntity
import com.classy.placelog.user.entity.User
import jakarta.persistence.Column
import jakarta.persistence.ElementCollection
import jakarta.persistence.Entity
import jakarta.persistence.FetchType
import jakarta.persistence.GeneratedValue
import jakarta.persistence.GenerationType
import jakarta.persistence.Id
import jakarta.persistence.ManyToOne
import jakarta.persistence.OrderColumn

@Entity
class Article(
    /** 게시글 ID */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0L,
    /** 글 제목 */
    @Column
    var title: String,
    /** 글 내용 */
    @Column(columnDefinition = "LONGTEXT")
    var content: String,
    /** 이미지 링크들 */
    @ElementCollection
    @OrderColumn
    var images: List<String>,
    /** 좋아요 수 */
    @Column(name = "like_count")
    var likeCount: Long = 0L,
    /** 댓글 수 */
    @Column(name = "reply_count")
    var replyCount: Long = 0L,
    /** 작성자 */
    @ManyToOne(fetch = FetchType.LAZY)
    val author: User
) : BaseEntity() {
}
