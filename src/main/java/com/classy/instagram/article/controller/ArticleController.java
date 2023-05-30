package com.classy.instagram.article.controller;

import com.classy.instagram.article.dto.ArticleEditForm;
import com.classy.instagram.article.dto.ArticleForm;
import com.classy.instagram.article.dto.ArticleInfo;
import com.classy.instagram.article.dto.ReplyDto;
import com.classy.instagram.article.service.ArticleService;
import com.classy.instagram.configuration.SessionConfig;
import com.classy.instagram.user.dto.UserDto;
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
            HttpSession session,
            @PathVariable("id") Long id) {
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        ArticleInfo articleInfo;

        if (user == null) {
            articleInfo = articleService.getArticle(id);
        } else {
            articleInfo = articleService.getArticle(id, user);
        }

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
        log.info("return Json: {}", gson.toJson(savedArticle));
        return ResponseEntity.status(HttpStatus.CREATED).body(gson.toJson(savedArticle));
    }

    @PostMapping("/api/articles/{id}/reply")
    @Operation(summary = "댓글 작성")
    @ApiResponse(responseCode = "201", description = "댓글 작성 성공")
    public ResponseEntity<Object> createReply(
            @PathVariable("id") Long id,
            @RequestBody ReplyDto reply,
            HttpSession session
    ) {
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        if (user == null) {
            log.info("user is null");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
        log.info("reply: {}", reply);
        return ResponseEntity.status(HttpStatus.CREATED).body(articleService.addReply(id, reply, user));
    }

    @DeleteMapping("/{id}")
    @Operation(summary = "게시글 삭제")
    @ApiResponse(responseCode = "204", description = "게시글 삭제 성공")
    public ResponseEntity<Object> deleteArticle(
            @PathVariable("id") Long id,
            HttpSession session
    ) throws Exception {
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        if (user == null) {
            log.info("user is null");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
        log.info("id: {}", id);
        try {
            articleService.deleteArticle(id, user);
        } catch (Exception e) {
            log.info("exception: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    @DeleteMapping("/reply/{replyId}")
    @Operation(summary = "댓글 삭제")
    @ApiResponse(responseCode = "204", description = "댓글 삭제 성공")
    public ResponseEntity<Object> deleteReply(
            @PathVariable("replyId") Long replyId,
            HttpSession session
    ) throws Exception {
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        if (user == null) {
            log.info("user is null");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
        log.info("id: {}", replyId);
        try {
            articleService.deleteReply(replyId, user);
        } catch (Exception e) {
            log.info("exception: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    @GetMapping("/{id}/edit")
    @Operation(summary = "게시글 수정 페이지 요청")
    public String getEditArticle(
            Model model,
            @PathVariable("id") Long id,
            HttpSession session
    ) {
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        if (user == null) {
            log.info("user is null");
            return "redirect:/";
        }
        ArticleInfo articleInfo = articleService.getArticle(id);
        if (articleInfo == null) {
            return "redirect:/";
        }
        if (!articleInfo.getAuthor().getEmail().equals(user.getEmail())) {
            return "redirect:/";
        }
        model.addAttribute("article", articleInfo);
        return "article/articleEditForm";
    }

    @PatchMapping("/{id}")
    @Operation(summary = "게시글 수정")
    @ApiResponse(responseCode = "204", description = "게시글 수정 성공")
    public ResponseEntity<Object> editArticle(
            @PathVariable("id") Long id,
            @RequestBody ArticleEditForm articleForm,
            HttpSession session
    ) throws Exception {
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        if (user == null) {
            log.info("user is null");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
        log.info("id: {}", id);
        log.info("articleForm: {}", articleForm);
        ArticleInfo saved;
        try {
            saved = articleService.updateArticle(articleForm);
        } catch (Exception e) {
            log.info("exception: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
        return ResponseEntity.ok(saved);
    }

    @PostMapping("/{id}/like")
    @Operation(summary = "게시글 좋아요")
    @ApiResponse(responseCode = "200", description = "게시글 좋아요 처리 성공")
    public ResponseEntity<Object> likeArticle(
            @PathVariable("id") Long id,
            HttpSession session
    ) {
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        log.info("좋아요 시도됨 id: {}, user :{}", id, user);
        if (user == null) {
            log.info("user is null");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }

        articleService.likeArticle(id, user);

        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/{id}/like")
    @Operation(summary = "게시글 좋아요 취소")
    @ApiResponse(responseCode = "200", description = "게시글 좋아요 취소 처리 성공")
    public ResponseEntity<Object> dislikeArticle(
            @PathVariable("id") Long id,
            HttpSession session
    ) {
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        if (user == null) {
            log.info("user is null");
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
        articleService.unlikeArticle(id, user);
        return ResponseEntity.ok().build();

    }


}
