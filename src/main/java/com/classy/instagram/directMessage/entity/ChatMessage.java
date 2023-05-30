package com.classy.instagram.directMessage.entity;

import com.classy.instagram.directMessage.dto.MessageType;
import com.classy.instagram.user.entity.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.sql.Timestamp;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ChatMessage {
    @Id
    private Long id;
    private MessageType type; //메시지 타입
    @ManyToOne
    private ChatRoom room; // 방 번호
    @ManyToOne
    private User sender; //채팅을 보낸 사람
    private String content; // 메세지
    private  Timestamp sendTime; // 보낸 시간

}
