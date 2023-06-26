<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Nanum+Gothic:wght@700&display=swap">
  <title>koyongyong_Main</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/CP_CoP_Main.css">
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

    <!-- 조회수 가장 많은 질문 1, 2, 3등 출력 -->
    <a href="#" class="first">
      <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_first.png" width="65px" height="65px" id="medal">
      <font size=5>작성자 : </font>
      <font size=5>
        1등 질문 제목 :
      </font>
      <font size=4>
        &nbsp;자 질문 제목이 길면 어떻게 될지 생각해볼까? 일단 어떻게 뜨니? 더 길어져볼까? 쪼꼼만 더 길어져보자~ 이거 두줄되면 어떻게 되지? 궁금한디 얼마나 가야함 진짜 굿
      </font>
      <font size=5>조회수 : ~ </font>
    </a>
    <a href="#" class="second">
      <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_second.png" width="70px" height="70px" id="medal">
      <font size=5>작성자 : </font>
      <font size=5>
        2등 질문 제목 :
      </font>
      <font size=4>
        &nbsp;자 질문 제목이 길면 어떻게 될지 생각해볼까? 일단 어떻게 뜨니? 더 길어져볼까? 쪼꼼만 더 길어져보자~
      </font>
      <font size=5>조회수 : ~ </font>
    </a>
    <a href="#" class="third">
      <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_third.png" width="70px" height="70px" id="medal">
      <font size=5>작성자 : </font>
      <font size=5>
        3등 질문 제목 :
      </font>
      <font size=4>
        &nbsp;자 질문 제목이 길면 어떻게 될지 생각해볼까? 일단 어떻게 뜨니? 더 길어져볼까? 쪼꼼만 더 길어져보자~
      </font>
      <font size=5>조회수 : ~ </font>
    </a>
  </main>
</body>
</html>
