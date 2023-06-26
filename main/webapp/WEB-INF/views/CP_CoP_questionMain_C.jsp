<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Nanum+Gothic:wght@700&display=swap">
  <title>Coyongyong_questionMain</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/CP_CoP_questionMain_C.css">
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
        <a href="#"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png"></a>
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

    <!-- 편하게 질문해보세요! 저 부분 -->
    <div class="explanation">
      <div class="explanation_content">
        <font size="5">
          <h1>편하게 질문해보세요!</h1>
          <h3>인공지능 챗봇과 사용자들의 도움을 얻어<br>궁금했던 질문에 대해 답변해줍니다.</h3>
        </font>
      </div>
      <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/explanation.png" id="explanation_img">
    </div>

    <!-- 1레벨일 경우 -->
    <!-- 다른 레벨일 경우는 뭐 2레벨이 올라온다던지 해야함. -->
    <div class="level1">
      
      <!-- 질문하기 버튼 -->
      <a href="#" class="question_generate">질문하러 가기</a>
      <div class="questions">
        <head class="level"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/C_1.png" width="120px" height="120px"></head>
        <!-- 질문 옆에 있는 숫자는 레벨 숫자 가져와서 나타내면 될듯 -->
        <div class="one_question">
          <a class="question" href="http://127.0.0.1:5500/CP_CoP_oneQuestion.html">
            질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
          </a>
          <div class="question_bar">
            <a class="answer">답변100개</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
          </a>
          <div class="question_bar">
            <a class="answer">답변100개</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
            질문3<br>한줄이라도 있으면 되나?
          </a>
          <div class="question_bar">
            <a class="answer">답변100개</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          질문2<br>&nbsp;
          </a>
          <div class="question_bar">
            <a class="answer">답변100개</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
          </a>
          <div class="question_bar">
            <a class="answer">답변100개</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
      </div>

      <div class="questions" id="question_plus">
        <div class="one_question">
          <a class="question" href="#">
          질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
          </a>
          <div class="question_bar">
            <a class="answer">답변100개</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?더 길면 어떻게 되니? 혹시? 근데 이렇게 질문이 긴 경우가 있을까?
          </a>
          <div class="question_bar">
            <a class="answer">답변100개</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
          </a>
          <div class="question_bar">
            <a class="answer">답변100개</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
          </a>
          <div class="question_bar">
            <a class="answer">답변100개</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
          </a>
          <div class="question_bar">
            <a class="answer">답변100개</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
      </div>
      <a href="#" class="question_plus">질문 더보기</a>
    </div>

    <!-- 두번째 레벨 --------------------------------------->
    <div class="questions">
      <head class="level"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/C_2.png" width="120px" height="120px"></head>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
    </div>
    <a href="#" class="question_plus" id="plus">질문 더보기</a>

    <!-- 세번째 레벨 ------------------------------------->
    <div class="questions">
      <head class="level"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/C_3.png" width="120px" height="120px"></head>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
    </div>
    <a href="#" class="question_plus" id="plus">질문 더보기</a>

    <!-- 네번째 레벨 ----------------------------------------->
    <div class="questions">
      <head class="level"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/C_4.png" width="120px" height="120px"></head>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변100개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
          질문2<br>&nbsp;질문내용<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~ 더 길어야하니...? 어디까지 가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지?
        </a>
        <div class="question_bar">
          <a class="answer">답변~개</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="5px" height="5px"></a>
        </div>
      </div>
    </div>
    <a href="#" class="question_plus" id="plus">질문 더보기</a>
  </main>
</body>
</html>