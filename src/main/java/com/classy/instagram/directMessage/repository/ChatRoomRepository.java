package com.classy.instagram.directMessage.repository;

import com.classy.instagram.directMessage.entity.ChatRoom;
import com.classy.instagram.user.entity.User;
import java.util.Collection;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ChatRoomRepository extends JpaRepository<ChatRoom, Long> {
    List<ChatRoom> findByChatMembersIn(Collection<User> chatMembers);

}
