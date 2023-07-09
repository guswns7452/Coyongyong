package com.example.coyongyong;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class CoyongyongApplication {

	
	// 이 부분 추가
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(CoyongyongApplication.class);
	}
		
	public static void main(String[] args) {
		SpringApplication.run(CoyongyongApplication.class, args);
	}

}
