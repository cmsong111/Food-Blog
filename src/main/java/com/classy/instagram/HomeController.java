package com.classy.instagram;


import com.classy.instagram.article.service.ArticleService;
import com.classy.instagram.configuration.SessionConfig;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

@Controller
@Slf4j
public class HomeController {
    ArticleService articleService;

    @Autowired
    public HomeController(ArticleService articleService) {
        this.articleService = articleService;
    }

    @GetMapping("/")
    public String home(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();

        if (session.getAttribute(SessionConfig.LOGIN_MEMBER) != null) {
            log.info("session: {}", session.getAttribute(SessionConfig.LOGIN_MEMBER));
        }
        model.addAttribute("articles", articleService.getAllArticlesSortByCreated());

        return "index";
    }

    @PostMapping("/")
    public String homeSearch(
            HttpServletRequest request,
            Model model,
            @RequestParam String keyword) {
        HttpSession session = request.getSession();

        if (session.getAttribute(SessionConfig.LOGIN_MEMBER) != null) {
            log.info("session: {}", session.getAttribute(SessionConfig.LOGIN_MEMBER));
        }
        model.addAttribute("articles", articleService.searchArticle(keyword));

        return "index";
    }


}
