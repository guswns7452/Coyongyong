package com.example.coyongyong.controller;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.tomcat.util.json.JSONParser;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;

@Controller
public class judge0APIController {
    private static final Logger logger = LogManager.getLogger(judge0APIController.class);

    public static void main(String args[]) throws IOException, InterruptedException {
        System.out.println("Application started");
        
//		전체 클래스 명 Main으로 통일
//        String code = "public class Main {\r\n"
//				+ "	public static void main(String[] args) {\r\n"
//				+ "		System.out.println(\"Welcome!!\\n자바 세계로 오신 것을 환영합니다.\");\r\n"
//				+ "	}\r\n"
//				+ "}";

        String code = "import java.util.Scanner;\r\n"
                + "\r\n"
                + "public class Main {\r\n"
                + "    public static int calculate(int num1, int num2) {\r\n"
                + "        return num1 + num2;\r\n"
                + "    }\r\n"
                + "\r\n"
                + "    public static void main(String[] args) {\r\n"
                + "        int num1, num2;\r\n"
                + "        System.out.println(\"2개의 숫자를 입력하시오.\");\r\n"
                + "        Scanner scanner = new Scanner(System.in);\r\n"
                + "        num1 = scanner.nextInt();\r\n"
                + "        num2 = scanner.nextInt();\r\n"
                + "        System.out.println(\"num1 + num2 = \" + calculate(num1, num2));\r\n"
                + "    }\r\n"
                + "}";
        
        String encodedCode = getApacheBase64_Encode(code);
        System.out.println("Encoded code: " +  encodedCode);

        // 요청
    	HttpRequest request = HttpRequest.newBuilder()
			      .uri(URI.create("https://judge0-ce.p.rapidapi.com/submissions?base64_encoded=true&fields=*"))
			      .header("content-type", "application/json")
			      .header("Content-Type", "application/json")
			      .header("X-RapidAPI-Key", "a297ae4b09msh1dfb9e4dbf352fbp135e96jsn8db75194f9f3")
			      .header("X-RapidAPI-Host", "judge0-ce.p.rapidapi.com")
			      .method("POST", HttpRequest.BodyPublishers.ofString("{\r\n    \"language_id\": 62,\r\n    \"source_code\": \""+encodedCode+"\",\r\n    \"stdin\": \"MSA1\"\r\n}"))
			      .build();
			HttpResponse<String> call = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
			String token = null;

        JSONParser parser = new JSONParser(token);
        JSONObject json = (JSONObject) parser.parse(call.body());
        token = (String) json.get("token");
        System.out.println("Token: " +  token);

        if (call.statusCode() != 201) {
            logger.error("API call failed");
            return;
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

                JSONObject json1 = (JSONObject) parser.parse(response.body());
                if (json1.containsKey("stdout")) {
                    stdout = (String) json1.get("stdout");
                    System.out.println("[Stdout] \n" + stdout);
                    System.out.println("====================\n");
                    
                    String decodedCode = getApacheBase64_Decode(stdout);
                    
                    System.out.println("Decoded code: " + decodedCode);
                    
//                   출력이 null일때, 오류일때.
                    if(stdout == null) {
                    	complieOutput = (String) json1.get("compile_output");
	                    System.out.println("complieOutput: {}" + complieOutput);
	                    
	                    String decodedCode1 = getApacheBase64_Decode(complieOutput);

	                    System.out.println("Decoded code: " + decodedCode1);
                    }
	                    

                } else {
                    logger.error("No stdout field in the response");
                }
            }
        }

        System.out.println("Application finished");


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