package com.example.coyongyong.chatGPT;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class ChatRequest {
    private String model;
    private List<Message> messages;
    private int max_tokens;
    
    private static final Logger logger = LoggerFactory.getLogger(ChatRequest.class);

    public ChatRequest(String model, String prompt, int max_tokens) {
        this.model = model;
        this.max_tokens = max_tokens;

        this.messages = new ArrayList<>();
        //TODO 여기에 가스라이팅
        this.messages.add(new Message("system", "당신은 최고의 개발자입니다. 당신에게 작성하지 못하는 코드는 없습니다. 당신은 코딩을 처음 배우는 학생들에게 이해가 잘 될 수 있도록 도움을 주어야합니다. 코딩 초보를 위해 친절하게 도움을 주세요. customerVO 객체 내부에 질문 제목과 질문 내용에 대해서 답변 부탁드려요."));  	
        this.messages.add(new Message("user", prompt));  	
      
    }

    // getModel
    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public List<Message> getMessages() {
        return messages;
    }

    public void setMessages(List<Message> messages) {
        this.messages = messages;
    }

    public int getMax_tokens() {
        return max_tokens;
    }

    public void setMax_tokens(int max_tokens) {
        this.max_tokens = max_tokens;
    }
}
