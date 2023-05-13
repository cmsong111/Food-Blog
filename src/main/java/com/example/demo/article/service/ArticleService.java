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
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

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
    @Transactional
    public void deleteArticle(Long id, UserDto userDto) throws Exception {
        if (!articleRepository.findById(id).orElseThrow().getAuthor().getEmail().equals(userDto.getEmail())) {
            throw new Exception("only author can delete article");
        }
        articleRepository.deleteById(id);
    }

    public ArticleInfo getArticle(Long id) {
        Article article = articleRepository.findById(id).orElseThrow();
        ArticleInfo articleInfo = modelMapper.map(article, ArticleInfo.class);
        articleInfo.setLikeCount(articleLikeRepository.countByArticle_Id(id));
        replyRepository.findByArticle_Id(id).forEach(reply -> {
            articleInfo.getReply().add(modelMapper.map(reply, ReplyDto.class));
        });
        return articleInfo;
    }

    public List<ArticleInfo> getAllArticlesSortByCreated() {
        List<Article> articles = articleRepository.findAll();
        articles.sort((a1, a2) -> a2.getCreateTime().compareTo(a1.getCreateTime()));
        List<ArticleInfo> articleInfos = new ArrayList<>();
        articles.forEach(article -> {
            if (article.getContent().length() > 50) article.setContent(article.getContent().substring(0, 50) + "...");
            articleInfos.add(modelMapper.map(article, ArticleInfo.class));
        });
        return articleInfos;
    }

    // TODO: Add Reply business logic methods
    public ReplyDto addReply(Long id, ReplyDto replyDto, UserDto userDto) {
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


    /**
     * delete reply by id with userDto
     *
     * @param replyIdx      reply id
     * @param userDto userDto
     * @throws Exception if userDto is not the author of the reply
     * @author 김남주
     */
    @Transactional
    public void deleteReply(Long replyIdx, UserDto userDto) throws Exception {
        Reply reply = replyRepository.findById(replyIdx).orElseThrow();
        if (!reply.getUser().getEmail().equals(userDto.getEmail())) {
            throw new Exception("only author can delete reply");
        }
        replyRepository.deleteById(replyIdx);
    }

}
