package com.example.coyongyong.controller;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import org.springframework.stereotype.Controller;


@Controller
public class checkController {
	private final HttpResponse<String> response;
	public checkController() throws IOException, InterruptedException {
        HttpRequest request = HttpRequest.newBuilder()
        		 .uri(URI.create("https://judge0-ce.p.rapidapi.com/about"))
                .header("X-RapidAPI-Key", "a297ae4b09msh1dfb9e4dbf352fbp135e96jsn8db75194f9f3")
                .header("X-RapidAPI-Host", "judge0-ce.p.rapidapi.com")
                .method("GET", HttpRequest.BodyPublishers.noBody())
                .build();
        this.response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
        System.out.println(response.body());
    }
}
