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


}
