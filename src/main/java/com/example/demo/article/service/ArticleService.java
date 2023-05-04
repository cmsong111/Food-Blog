package com.example.demo.article.service;

import com.example.demo.article.repository.ArticleLikeRepository;
import com.example.demo.article.repository.ArticleRepository;
import com.example.demo.article.repository.ReplyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleService {
    ArticleRepository articleRepository;
    ReplyRepository replyRepository;
    ArticleLikeRepository articleLikeRepository;

    @Autowired
    public ArticleService(ArticleRepository articleRepository, ReplyRepository replyRepository, ArticleLikeRepository articleLikeRepository) {
        this.articleRepository = articleRepository;
        this.replyRepository = replyRepository;
        this.articleLikeRepository = articleLikeRepository;
    }

    // TODO: Add Article business logic methods

    // TODO: Delete Article business logic methods

    // TODO: Read Article business logic methods

    // TODO: Add Reply business logic methods

    // TODO: Add ArticleLike business logic methods

    // TODO: Image upload business logic methods

    // TODO: Article search business logic methods

}
