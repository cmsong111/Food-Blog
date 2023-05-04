package com.example.demo;


import com.example.demo.configuration.SessionConfig;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@Slf4j
public class HomeController {
    @GetMapping("/")
    public String home(HttpServletRequest request) {
        HttpSession session = request.getSession();

        if (session.getAttribute(SessionConfig.LOGIN_MEMBER) != null) {
            log.info("session: {}", session.getAttribute(SessionConfig.LOGIN_MEMBER));
        }
        return "index";
    }

}
