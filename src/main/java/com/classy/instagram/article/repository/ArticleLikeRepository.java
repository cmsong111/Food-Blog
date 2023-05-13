package com.classy.instagram.article.repository;

import com.classy.instagram.article.entity.ArticleLike;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ArticleLikeRepository extends JpaRepository<ArticleLike, Long> {
    long countByArticle_Id(Long id);

}
