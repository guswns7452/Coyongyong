package com.example.coyongyong.chatGPT;

import java.util.ArrayList;
import java.util.List;

public class ChatRequest {
    private String model;
    private List<Message> messages;
    private int max_tokens;

    public ChatRequest(String model, String prompt, int max_tokens) {
        this.model = model;
        this.max_tokens = max_tokens;

        this.messages = new ArrayList<>();
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
