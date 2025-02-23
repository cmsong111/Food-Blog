package com.classy.placelog.article.repository

import com.classy.placelog.article.entity.ArticleLike
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Modifying
import org.springframework.data.jpa.repository.Query
import org.springframework.stereotype.Repository

@Repository
interface ArticleLikeRepository : JpaRepository<ArticleLike, ArticleLike.ArticleLikeId> {

    /**
     * 게시글 별 좋아요 수 조회
     * @param id 게시글 ID
     * @return 좋아요 수
     */
    fun countByIdArticleId(id: Long): Long

    /**
     * 좋아요 여부 조회
     * @param id 게시글 ID
     * @param email 사용자 이메일
     */
    fun existsByIdArticleIdAndIdAuthorEmail(id: Long, email: String): Boolean

    /**
     * 좋아요 검색
     * @param id 게시글 ID
     * @param email 사용자 이메일
     */
    fun findByIdArticleIdAndIdAuthorEmail(id: Long, email: String): ArticleLike

    /**
     * 좋아요 수 동기화
     * @param id 게시글 ID
     */
    @Modifying
    @Query(
        """
        UPDATE Article a
        SET a.likeCount = (
            SELECT COUNT(l)
            FROM ArticleLike l
            WHERE l.id.article.id = :id
        )
        WHERE a.id = :id
        """
    )
    fun syncLikeCount(id: Long)
}
