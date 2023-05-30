package com.classy.instagram.article.repository;

import com.classy.instagram.article.entity.Article;
import com.classy.instagram.article.entity.ArticleLike;
import com.classy.instagram.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ArticleLikeRepository extends JpaRepository<ArticleLike, Long> {
    long countByArticle_Id(Long id);

    ArticleLike findByArticleAndUser(Article article, User user);

    boolean existsByArticleAndUser(Article article, User user);

    boolean existsByArticle_IdAndUser_Email(Long id, String email);


    int countByArticle(Article article);


}
