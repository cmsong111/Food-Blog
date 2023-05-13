package com.example.demo.article.repository;

import com.example.demo.article.entity.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArticleRepository  extends JpaRepository<Article,Long> {
    List<Article> findByAuthor_EmailOrderByCreateTimeDesc(String email);


}
