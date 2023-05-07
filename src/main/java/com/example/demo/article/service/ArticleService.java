package com.example.demo.article.service;

import com.example.demo.article.dto.ArticleForm;
import com.example.demo.article.dto.ArticleInfo;
import com.example.demo.article.dto.ReplyDto;
import com.example.demo.article.entity.Article;
import com.example.demo.article.entity.Reply;
import com.example.demo.article.repository.ArticleLikeRepository;
import com.example.demo.article.repository.ArticleRepository;
import com.example.demo.article.repository.ReplyRepository;
import com.example.demo.user.dto.UserDto;
import com.example.demo.user.entity.User;
import com.example.demo.user.repository.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import java.sql.Timestamp;

@Service
@Slf4j
public class ArticleService {
    private final UserRepository userRepository;
    ArticleRepository articleRepository;
    ReplyRepository replyRepository;
    ArticleLikeRepository articleLikeRepository;
    ModelMapper modelMapper = new ModelMapper();

    @Autowired
    public ArticleService(ArticleRepository articleRepository, ReplyRepository replyRepository, ArticleLikeRepository articleLikeRepository,
                          UserRepository userRepository) {
        this.articleRepository = articleRepository;
        this.replyRepository = replyRepository;
        this.articleLikeRepository = articleLikeRepository;
        this.userRepository = userRepository;
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

    public ArticleInfo getArticle(Long id) {
        Article article = articleRepository.findById(id).orElseThrow();
        ArticleInfo articleInfo = modelMapper.map(article, ArticleInfo.class);
        articleInfo.setLikeCount(articleLikeRepository.countByArticle_Id(id));
        replyRepository.findByArticle_Id(id).forEach(reply -> {
            articleInfo.getReply().add(modelMapper.map(reply, ReplyDto.class));
        });
        return articleInfo;
    }

    // TODO: Add Reply business logic methods
    public ReplyDto addReply(Long id,ReplyDto replyDto, UserDto userDto) {
        log.info("replyDto: {}", replyDto);
        log.info("userDto: {}", userDto);
        Reply reply = modelMapper.map(replyDto, Reply.class);
        reply.setCreateTime(new Timestamp(System.currentTimeMillis()));
        reply.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        reply.setUser(userRepository.findById(userDto.getEmail()).orElseThrow());
        reply.setArticle(articleRepository.findById(id).orElseThrow());
        return modelMapper.map(replyRepository.save(reply), ReplyDto.class);
    }

    // TODO: Add ArticleLike business logic methods

    // TODO: Image upload business logic methods

    // TODO: Article search business logic methods

}
