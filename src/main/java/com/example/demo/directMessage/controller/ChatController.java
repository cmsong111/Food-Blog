package com.example.demo.directMessage.controller;

import com.example.demo.configuration.SessionConfig;
import com.example.demo.directMessage.dto.ChatMessageDto;
import com.example.demo.directMessage.dto.ChatRoomDto;
import com.example.demo.directMessage.entity.ChatRoom;
import com.example.demo.directMessage.service.ChatService;
import com.example.demo.user.dto.UserDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
public class ChatController {
    ChatService chatService;

    @Autowired
    public ChatController(ChatService chatService) {
        this.chatService = chatService;
    }

    @MessageMapping("/chat.sendMessage")
    @ResponseBody
    @SendTo("/topic/public")
    public ChatMessageDto sendMessage(@RequestBody ChatMessageDto message) {
        log.info("message : {}", message);
        return message;
    }

    @MessageMapping("/chat.addUser")
    @SendTo("/topic/public")
    @ResponseBody
    public ChatMessageDto join(@RequestBody ChatMessageDto message, SimpMessageHeaderAccessor headerAccessor) {
        log.info("message : {}", message);
        headerAccessor.getSessionAttributes().put("username", message.getSender());
        return message;
    }

    @GetMapping("/chat")
    public String chat(HttpSession session, Model model) {
        UserDto user = (UserDto) session.getAttribute(SessionConfig.LOGIN_MEMBER);
        model.addAttribute("user", user.getUsername());
        return "dm/chat";
    }

    @GetMapping("/chat/room")
    @ResponseBody
    public ArrayList<ChatRoomDto> chatRoom(@RequestParam String userEmail) {
        ArrayList<ChatRoomDto> roomsList = chatService.findChatRoomsByUserDto(userEmail);
        return roomsList;
    }

    @PostMapping("/chat/room/{id}")
    @ResponseBody
    public ChatRoom joinChatRoom(@PathVariable Long id, @RequestParam String userEmail) {
        ChatRoom room = chatService.joinChatRoom(id, userEmail);
        return room;
    }




}
