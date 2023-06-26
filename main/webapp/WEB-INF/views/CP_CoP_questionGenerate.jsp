<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Nanum+Gothic:wght@700&display=swap">
  <title>CoyongYong_oneQuestion</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/CP_CoP_oneQuestion.css">
</head>

<body>
  <main>
    <!-- js로 로그인 되어있는지 확인 받고 블락 처리하는거 넣기. -->
    <!-- 로고와 로그인, 회원가입 (로그인 안되어있을 시) -->
    <!-- 로그인 되어있으면 블락처리 -->
    <div class="topbar">
      <div class="logo"><br>
        <a href="CP_CoP_Main.html"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png"></a>
      </div>
      <div class="loginbar_search">
        <div class="search">
          <input id="search" type="text" placeholder="검색어 입력">
          <a href="#"><img id=search_img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/magnifying.png" width="20px" height="20px"></a>
        </div>
        <div class="loginbar">
          <a href="https://naver.com" id=mainLogin>login</a>
          &nbsp;|&nbsp;
          <a href="https://naver.com" id=makeAccount>회원가입</a>
        </div>
      </div>
    </div>

    <!-- 로고와 배지, 로그아웃 (로그인 되어있을 시) -->
    <!-- 로그인 안되어있으면 블락처리 -->
    <!-- <div class="topbar">
      <div class="logo"><br>
        <a href="#"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png">koyongyong</a>
      </div>
      <div class="loginbar_search">
        <div class="search">
          <input id="search" type="text" placeholder="검색어 입력">
          <a href="#"><img id=search_img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/magnifying.png" width="20px" height="20px"></a>
        </div>
        <div class="loginbar_login" >
          <a href="https://naver.com" id=mainLogin><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/C_3.png" width="35px" height="35px"></a>
          &nbsp;|&nbsp;
          <a href="https://naver.com" id=makeAccount><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logout.png" width="30px" height="30px"></a>
        </div>
      </div>
    </div> -->

    <div class="content"></div>
    
    <!-- 메뉴바 버튼 -->
    <div class="menubar">
      <div>
        <a href="CP_CoP_questionMain.html" id="main_question_btn" class="menubtn">질문</a>
        <div class="dropdown_menubar" id="menubar_left">
          <li><a href="#">Java</a></li>
          <li><a href="#">Python</a></li>
          <li><a href="#">C++</a></li>
          <li><a href="#">C#</a></li>
        </div>
      </div>
      <div>
        <a href="#" id="main_study_btn" class="menubtn">공부일지</a>
        <div class="dropdown_menubar">
          <li><a href="#">일지 작성</a></li>
          <li><a href="#">다른 사람의 일지</a></li>
        </div>
      </div>
      <div>
        <a href="#" id="main_coding_btn" class="menubtn">코딩테스트</a>
        <div class="dropdown_menubar" id="menubar_right">
          <li><a href="#">뭐넣지</a></li>
          <li><a href="#">뭐넣을까</a></li>
          <li><a href="#">고민되네</a></li>
          <li><a href="#">흠</a></li>
        </div>
      </div>
    </div>
    <!-- 메뉴바 끝------------------------------------------->
    
    <!-- 질문하는 공간 -->
    <div>
      <a class="choice_language">
        언어 선택하기
      </a>
      <div class="dropdown_language">
        <li><a href="#">C언어</a></li>
        <li><a href="#">C#</a></li>
        <li><a href="#">Java</a></li>
        <li><a href="#">python</a></li>
      </div>
    </div>
    <!-- 질문 제목 작성하는 곳 -->
    <h3>질문 제목 작성하기</h3>
	<form name=form action="http://localhost:8080/question/writequestion" method="post"> 
	    <div class="input_question">
	      <input name="questionTitle" id="input_question" type="text" placeholder="질문 제목을 입력해주세요.">
	      <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png" width="10px" height="10px">
	    </div>
	    <!-- 질문 내용 작성하기 -->
	    <div>
	      <h2>질문 내용 작성하기</h2>
	      <input name="questionContent" type="text" id="input_question" placeholder="질문 내용을 작성해주세요.">
	    </div>
	    
    	<input type="submit" name="submit" value="작성">작성완료</input>
    </form>   
  </main>
</body>