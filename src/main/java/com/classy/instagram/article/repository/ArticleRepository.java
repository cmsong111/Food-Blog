package com.classy.instagram.article.repository;

import com.classy.instagram.article.entity.Article;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ArticleRepository extends JpaRepository<Article, Long> {
    List<Article> findByAuthor_EmailOrderByCreateTimeDesc(String email);

    List<Article> findByTitleContainsOrContentContains(String title, String content);


}
