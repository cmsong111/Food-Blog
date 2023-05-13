package com.classy.instagram.article.service;

import com.classy.instagram.article.dto.ArticleEditForm;
import com.classy.instagram.article.dto.ArticleInfo;
import com.classy.instagram.article.dto.ReplyDto;
import com.classy.instagram.article.dto.ArticleForm;
import com.classy.instagram.article.entity.Article;
import com.classy.instagram.article.entity.Reply;
import com.classy.instagram.article.repository.ArticleLikeRepository;
import com.classy.instagram.article.repository.ArticleRepository;
import com.classy.instagram.article.repository.ReplyRepository;
import com.classy.instagram.user.dto.UserDto;
import com.classy.instagram.user.entity.User;
import com.classy.instagram.user.repository.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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

    public ArticleInfo updateArticle(ArticleEditForm articleForm){
        Article article = articleRepository.findById(articleForm.getId()).orElseThrow();

        article.setTitle(articleForm.getTitle());
        article.setContent(articleForm.getContent());
        article.setUpdateTime(new Timestamp(System.currentTimeMillis()));
        article.setPictureUrl(articleForm.getPictureUrl());

        return modelMapper.map(articleRepository.save(article), ArticleInfo.class);
    }

    // TODO: Delete Article business logic methods
    @Transactional
    public void deleteArticle(Long id, UserDto userDto) throws Exception {
        Optional<Article> optinalArticle = articleRepository.findById(id);
        if (optinalArticle.isEmpty()) {
            throw new Exception("article not found");
        }
        Article article = optinalArticle.get();
        if (!article.getAuthor().getEmail().equals(userDto.getEmail())) {
            throw new Exception("only author can delete article");
        }

        List<Reply> replies = replyRepository.findByArticle_Id(id);
        replyRepository.deleteAll(replies); // 연관된 댓글 삭제

        articleRepository.delete(article);
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

    /**
     * get article arrayList search by user email
     *
     * @param email user email
     * @return article arrayList
     */
    public List<ArticleInfo> getArticlesByEmail(String email) {
        List<Article> articles = articleRepository.findByAuthor_EmailOrderByCreateTimeDesc(email);
        List<ArticleInfo> articleInfos = new ArrayList<>();
        articles.forEach(article -> {
            if (article.getContent().length() > 30) article.setContent(article.getContent().substring(0, 30) + "...");
            articleInfos.add(modelMapper.map(article, ArticleInfo.class));
        });
        return articleInfos;
    }


    // TODO: Add ArticleLike business logic methods


    // TODO: Article search business logic methods


    /**
     * delete reply by id with userDto
     *
     * @param replyIdx      reply id
     * @param userDto userDto
     * @throws Exception if userDto is not the author of the reply
     * @author 김남주
     */
    public void deleteReply(Long replyIdx, UserDto userDto) throws Exception {
        Reply reply = replyRepository.findById(replyIdx).orElseThrow();
        if (!reply.getUser().getEmail().equals(userDto.getEmail())) {
            throw new Exception("only author can delete reply");
        }
        replyRepository.deleteById(replyIdx);
    }

}
