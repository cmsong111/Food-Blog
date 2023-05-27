package com.classy.instagram.directMessage.controller;

import com.classy.instagram.configuration.SessionConfig;
import com.classy.instagram.user.dto.UserDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Slf4j
@Controller
public class ChatController {


    @GetMapping("/chat")
    public String chat(HttpSession session, Model model) {
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        model.addAttribute("user", user.getUsername());
        return "dm/chat";
    }


}
