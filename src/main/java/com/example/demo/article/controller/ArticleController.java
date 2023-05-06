package com.example.demo.article.controller;

import com.example.demo.article.dto.ArticleForm;
import com.example.demo.article.dto.ArticleInfo;
import com.example.demo.article.service.ArticleService;
import com.example.demo.configuration.SessionConfig;
import com.example.demo.user.dto.UserDto;
import com.google.gson.Gson;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Slf4j
@Tag(name = "Article", description = "게시글 관련 API")
@Controller
@RequestMapping("/article")
public class ArticleController {

    ArticleService articleService;
    Gson gson = new Gson();

    @Autowired
    public ArticleController(ArticleService articleService) {
        this.articleService = articleService;
    }

    @GetMapping("/{id}")
    @Operation(summary = "게시글 상세보기 페이지 요청")
    public String getArticleDetail(
            Model model,
            @PathVariable("id") Long id) {
        ArticleInfo articleInfo = articleService.getArticle(id);
        if (articleInfo == null) {
            return "redirect:/";
        }

        model.addAttribute("article", articleInfo);

        return "article/articleDetail";
    }

    @GetMapping("/post")
    @Operation(summary = "게시글 작성 페이지 요청")
    public String getPostArticle() {

        return "article/articleForm";
    }

    @PostMapping("/api/articles")
    @Operation(summary = "게시글 작성")
    @ApiResponse(responseCode = "201", description = "게시글 작성 성공")
    public ResponseEntity<String> postArticle(
            @RequestBody ArticleForm articleForm,
            HttpSession session
    ) {
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        if (user == null) {
            log.info("user is null");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
        log.info("articleForm: {}", articleForm);
        ArticleInfo savedArticle = articleService.addArticle(articleForm, user);
        log.info("savedArticle: {}", savedArticle);
        log.info("return Josn: {}", gson.toJson(savedArticle));
        return ResponseEntity.status(HttpStatus.CREATED).body(gson.toJson(savedArticle));
    }

}
