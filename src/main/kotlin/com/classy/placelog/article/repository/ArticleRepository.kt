package com.classy.placelog.article.repository

import com.classy.placelog.article.entity.Article
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import org.springframework.stereotype.Repository

@Repository
interface ArticleRepository : JpaRepository<Article, Long> {
    /**
     * 유저 별 게시글 조회
     * @param email 유저 이메일
     * @return 유저가 작성한 게시글
     */
    fun findAllByAuthorEmail(email: String): List<Article>

    /**
     * 게시글 검색 기능
     * 제목과 내용중에 해당 키워드가 포함된 게시글을 검색한다.
     * @param keyword 검색어
     * @return 검색 결과
     */
    @Query(
        """
        select a
        from Article a 
        where a.title like concat('%', ?1, '%') 
        or a.content like concat('%', ?1, '%')
        """,
    )
    fun findArticleByKeywords(
        title: String?,
        pageable: Pageable,
    ): Page<Article>
}
