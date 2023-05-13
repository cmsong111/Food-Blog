package com.classy.instagram.directMessage.repository;

import com.classy.instagram.directMessage.entity.ChatRoom;
import com.classy.instagram.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Collection;
import java.util.List;

public interface ChatRoomRepository extends JpaRepository<ChatRoom, Long> {
    List<ChatRoom> findByChatMembersIn(Collection<User> chatMembers);

}
