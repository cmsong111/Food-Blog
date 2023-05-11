package com.example.demo.directMessage.repository;

import com.example.demo.directMessage.entity.ChatRoom;
import com.example.demo.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Collection;
import java.util.List;

public interface ChatRoomRepository extends JpaRepository<ChatRoom, Long> {
    List<ChatRoom> findByChatMembersIn(Collection<User> chatMembers);

}
