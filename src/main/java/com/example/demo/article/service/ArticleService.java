package com.example.demo.article.service;

import com.example.demo.article.dto.ArticleForm;
import com.example.demo.article.dto.ArticleInfo;
import com.example.demo.article.entity.Article;
import com.example.demo.article.repository.ArticleLikeRepository;
import com.example.demo.article.repository.ArticleRepository;
import com.example.demo.article.repository.ReplyRepository;
import com.example.demo.user.dto.UserDto;
import com.example.demo.user.entity.User;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import java.sql.Timestamp;

@Service
@Slf4j
public class ArticleService {
    ArticleRepository articleRepository;
    ReplyRepository replyRepository;
    ArticleLikeRepository articleLikeRepository;
    ModelMapper modelMapper = new ModelMapper();

    @Autowired
    public ArticleService(ArticleRepository articleRepository, ReplyRepository replyRepository, ArticleLikeRepository articleLikeRepository) {
        this.articleRepository = articleRepository;
        this.replyRepository = replyRepository;
        this.articleLikeRepository = articleLikeRepository;
    }

    // TODO: Add Article business logic methods
    public ArticleInfo addArticle(ArticleForm articleForm, UserDto userDto) {
        Article article = modelMapper.map(articleForm, Article.class);
        article.setCreateTime(new Timestamp(System.currentTimeMillis()));
        article.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        article.setAuthor(modelMapper.map(userDto, User.class));
        return modelMapper.map(articleRepository.save(article), ArticleInfo.class);
    }

    // TODO: Delete Article business logic methods

    // TODO: Read Article business logic methods
    public ArticleInfo getArticle(Long id) {
        Article article = articleRepository.findById(id).orElseThrow();
        ArticleInfo articleInfo = modelMapper.map(article, ArticleInfo.class);
        return articleInfo;
    }

    // TODO: Add Reply business logic methods

    // TODO: Add ArticleLike business logic methods

    // TODO: Image upload business logic methods

    // TODO: Article search business logic methods

}
