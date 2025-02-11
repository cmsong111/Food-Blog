package com.classy.instagram.directMessage.repository;

import com.classy.instagram.directMessage.entity.ChatMessage;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ChatMessageRepository extends JpaRepository<ChatMessage, Long> {
    List<ChatMessage> findByRoom_IdOrderBySendTimeAsc(Long id);

}
