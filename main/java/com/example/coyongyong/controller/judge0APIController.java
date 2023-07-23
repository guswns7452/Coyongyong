package com.example.coyongyong.controller;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.stereotype.Controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class judge0APIController {
    private static final Logger logger = LogManager.getLogger(judge0APIController.class);

    public String check(HashMap<String, String> answerMap,String language, String code) throws IOException, InterruptedException {
        System.out.println("Application started");
        
//		자바 전체 클래스 명 Main으로 통일
        
        //code 인코딩
        String encodedCode = getApacheBase64_Encode(code);
        System.out.println("Encoded code: " +  encodedCode);

        //answerEncoding
        ArrayList<String> encodingList = new ArrayList<String>();
        answerMap.entrySet().forEach(entry->{ 
        	encodingList.add(getApacheBase64_Encode(entry.getKey()));
        	encodingList.add(getApacheBase64_Encode(entry.getValue()));
		}); 
        
        // 언어번호 선택
        System.out.println(language);
        String languageNum = "48";
        if(language.equals("c")) {
        	 languageNum = "48";
        }
        else if(language.equals("java")) {
        	 languageNum = "91";
        }
        else if(language.equals("python")) {
        	 languageNum = "71";
        }
        // 요청
        int count = 0;
        for(int i=0; i<3 ; i++) {
        	String expectedOutput = encodingList.get(i*2+1);
        	System.out.println("=============");
        	HttpRequest request = HttpRequest.newBuilder()
				      .uri(URI.create("https://judge0-ce.p.rapidapi.com/submissions?base64_encoded=true&fields=*"))
				      .header("content-type", "application/json")
				      .header("Content-Type", "application/json")
				      .header("X-RapidAPI-Key", "a297ae4b09msh1dfb9e4dbf352fbp135e96jsn8db75194f9f3")
				      .header("X-RapidAPI-Host", "judge0-ce.p.rapidapi.com")
				      .method("POST", HttpRequest.BodyPublishers.ofString("{\r\n    \"language_id\":"+languageNum+",\r\n    \"source_code\": \""+encodedCode+"\",\r\n    \"stdin\": \""+encodingList.get(i*2)+"\",\r\n  \"expected_output\": \""+expectedOutput+"\"\r\n}"))
				      .build();
				HttpResponse<String> call = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
				String token = null;
	        
	     // Parse the JSON response using Jackson ObjectMapper
	        ObjectMapper objectMapper = new ObjectMapper();
	        JsonNode jsonResponse = objectMapper.readTree(call.body());
	
	        System.out.println("call: " +  call.body());
	        token = jsonResponse.get("token").asText();
	        System.out.println("Token: " +  token);
	
	        if (call.statusCode() != 201) {
	            logger.error("API call failed");
	            return "";
	        } else {
	            // 응답
	        	System.out.println("\n3초 대기중~\n");
	        	Thread.sleep(3000);
	            HttpRequest responseRequest = HttpRequest.newBuilder()
	                    .uri(URI.create("https://judge0-ce.p.rapidapi.com/submissions/" + token + "?base64_encoded=true&wait=true"))
	                    .header("X-RapidAPI-Key", "a297ae4b09msh1dfb9e4dbf352fbp135e96jsn8db75194f9f3")
	                    .header("X-RapidAPI-Host", "judge0-ce.p.rapidapi.com")
	                    .method("GET", HttpRequest.BodyPublishers.noBody())
	                    .build();
	            HttpResponse<String> response = HttpClient.newHttpClient().send(responseRequest, HttpResponse.BodyHandlers.ofString());
	            System.out.println("[Response body]\n " + response.body());
	
	            if (response.statusCode() == 200) {
	                String stdout = null;
	                String complieOutput = null;
	
	                JsonNode jsonResponse1 = objectMapper.readTree(response.body());
	                
	                if (jsonResponse1.has("stdout")) {
	                    stdout = (String) jsonResponse1.get("stdout").asText();
	                    System.out.println("[Stdout] \n" + stdout);
	                    System.out.println("====================\n");
	                    
	                    String decodedCode = getApacheBase64_Decode(stdout);
	                    
	                    System.out.println("Decoded code: " + decodedCode);
	                    if(decodedCode.equals(getApacheBase64_Decode(expectedOutput))) {
	                    	count ++;
	                    }
	                    else {
//	                      출력이 null일때, 오류일때.
		                    if(stdout.equals("null")) {
		                    	complieOutput = (String) jsonResponse1.get("compile_output").asText();
		                    	if(complieOutput.equals("null")) {
		                        	String stderrOutput = (String) jsonResponse1.get("stderr").asText();
		                        	System.out.println("complieOutput: {}" + stderrOutput);
		    	                    
		    	                    String decodedCode2 = getApacheBase64_Decode(stderrOutput);
		
		    	                    System.out.println("Decoded code: " + decodedCode2);
		                    	}
		                    	else {
		                    		System.out.println("complieOutput: {}" + complieOutput);
		    	                    
		    	                    String decodedCode1 = getApacheBase64_Decode(complieOutput);
		
		    	                    System.out.println("Decoded code: " + decodedCode1);
		                    	}
		                    }  
		                } 
	                }
	                else {
		               logger.error("No stdout field in the response");
		            }
	            }
	        }

	      if(count == 3) {
	    	  System.out.println("정답입니다.");
		      return "true";
	      }
	      
        }
        return "false";
	    	

//    	HttpRequest request = HttpRequest.newBuilder()
//    			.uri(URI.create("https://judge0-ce.p.rapidapi.com/config_info"))
//    			.header("X-RapidAPI-Key", "a297ae4b09msh1dfb9e4dbf352fbp135e96jsn8db75194f9f3")
//    			.header("X-RapidAPI-Host", "judge0-ce.p.rapidapi.com")
//    			.method("GET", HttpRequest.BodyPublishers.noBody())
//    			.build();
//    	HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
//    	System.out.println(response.body());
    	
//    	HttpRequest request = HttpRequest.newBuilder()
//    			.uri(URI.create("https://judge0-ce.p.rapidapi.com/statuses"))
//    			.header("X-RapidAPI-Key", "a297ae4b09msh1dfb9e4dbf352fbp135e96jsn8db75194f9f3")
//    			.header("X-RapidAPI-Host", "judge0-ce.p.rapidapi.com")
//    			.method("GET", HttpRequest.BodyPublishers.noBody())
//    			.build();
//    	HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
//    	System.out.println(response.body());
        
//        HttpRequest request = HttpRequest.newBuilder()
//        		.uri(URI.create("https://ce.p.rapidapi.com/system_info"))
//        		.header("X-RapidAPI-Key", "a297ae4b09msh1dfb9e4dbf352fbp135e96jsn8db75194f9f3")
//        		.header("X-RapidAPI-Host", "judge0-ce.p.rapidapi.com")
//        		.method("GET", HttpRequest.BodyPublishers.noBody())
//        		.build();
//        HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
//        System.out.println(response.body());
      }	
    //==== [아파치 base64 인코딩 메소드] ====
    public static String getApacheBase64_Encode(String data) {
        return new String(Base64.encodeBase64(data.getBytes()));
    }

  //==== [아파치 base64 디코딩 메소드] ====
    public static String getApacheBase64_Decode(String data) {
        if (data != null) {
            return new String(Base64.decodeBase64(data));
        } else {
            return null;
        }
    }

}