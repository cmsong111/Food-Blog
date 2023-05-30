package com.classy.instagram.directMessage.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ChatMessageDto {
    private MessageType type; //메시지 타입
    private Long roomId; // 방 번호
    private String sender; //채팅을 보낸 사람
    private String content; // 메세지
}
