package com.example.demo.directMessage.repository;

import com.example.demo.directMessage.entity.ChatMessage;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ChatMessageRepository extends JpaRepository<ChatMessage, Long>{
    List<ChatMessage> findByRoom_IdOrderBySendTimeAsc(Long id);

}
