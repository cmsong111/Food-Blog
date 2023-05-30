package com.classy.instagram.directMessage.service;

import com.classy.instagram.directMessage.entity.ChatRoom;
import com.classy.instagram.directMessage.repository.ChatMessageRepository;
import com.classy.instagram.directMessage.repository.ChatRoomRepository;
import com.classy.instagram.directMessage.dto.ChatRoomDto;
import com.classy.instagram.user.entity.User;
import com.classy.instagram.user.repository.UserRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Service
public class ChatService {
    ChatRoomRepository chatRoomRepository;
    ChatMessageRepository chatMessageRepository;
    UserRepository userRepository;
    ModelMapper modelMapper = new ModelMapper();

    @Autowired
    public ChatService(ChatRoomRepository chatRoomRepository, ChatMessageRepository chatMessageRepository, UserRepository userRepository) {
        this.chatRoomRepository = chatRoomRepository;
        this.chatMessageRepository = chatMessageRepository;
        this.userRepository = userRepository;
    }

    /**
     * 유저 한명의 채팅방 목록을 가져온다.
     *
     * @param userDto 유저 정보
     * @return 채팅방 목록
     * @author 김남주
     */
    public ArrayList<ChatRoomDto> findChatRoomsByUserDto(String userEmail) {
        User user = userRepository.findById(userEmail).orElseThrow();
        ArrayList<ChatRoomDto> chatRoomDtos = new ArrayList<>();

        Collection<User> id = List.of(user); 
        chatRoomRepository.findByChatMembersIn(id).forEach(
                chatRoom -> {
                    chatRoomDtos.add(modelMapper.map(chatRoom, ChatRoomDto.class));
                }
        );
        return chatRoomDtos;
    }

    /**
     * 참가 유저들을 키로 채팅방을 찾는다.
     *
     * @param userIds 채팅방에 참가중인 유저들의 아이디
     * @return 생성된 채팅방 정보
     */
    public List<ChatRoom> findChatRoomsByUserIds(List<String> userIds) {
        Collection<User> users = new ArrayList<>();
        for (String userId : userIds) {
            users.add(userRepository.findById(userId).orElseThrow());
        }
        return chatRoomRepository.findByChatMembersIn(users);
    }

    /**
     * 채팅방을 생성한다.
     *
     * @param userIds 채팅방에 참가중인 유저들의 아이디
     * @return 생성된 채팅방 정보
     */
    public ChatRoom createChatRoom(List<String> userIds) {
        List<User> users = new ArrayList<>();
        for (String userId : userIds) {
            users.add(userRepository.findById(userId).orElseThrow());
        }
        ChatRoom chatRoom = ChatRoom.builder()
                .chatMembers(users)
                .build();
        return chatRoomRepository.save(chatRoom);
    }

    public ChatRoom joinChatRoom(Long roomId, String userId){
        ChatRoom chatRoom = chatRoomRepository.findById(roomId).orElseThrow();
        User user = userRepository.findById(userId).orElseThrow();
        chatRoom.getChatMembers().add(user);
        return chatRoomRepository.save(chatRoom);
    }


}
