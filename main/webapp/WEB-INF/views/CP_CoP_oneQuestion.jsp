<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("replaceChar","\n"); %>

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

    <!-- 메뉴바 끝----------------------------------------- -->

    <!-- 질문에 대한 내용 적어주는 공간. -->
    <div>
      <div class="question_mark">
        <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/letter-q.png" width="60px" height="60px">
        <div class="question_title">
          <span id="question_title"><font size=6>${question.questionTitle}</font></span>
          <span id="question_title"><font size=2>작성자 : ${question.customerID}, 작성시간 : ${question.questionDate}</font></span>
        </div>
      </div>
      <div class="question_content">
        <h3 id="question_language">C언어 - ${question.gradeNum} level</h3>
        <h4>&nbsp;&nbsp;${question.questionContent}</h4>
      </div>
    </div>
    
    <!-- 용용이 답변 생성 위치. -->
    <div>
      <div>
        <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/a.png" width="65px" height="65px">
        <h1>용용이의 답변이 있습니다!</h1>
      </div>
      <div class="yongyong_answer">
        <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png" width="80px" height="80px">
        <h4 class="yongyong_answer_content">
          <font size=3>&nbsp;${fn:replace(yongyong.answerYongContent,replaceChar,"<br/>")}
        </font>
      </h4>
      <a href="#"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/siren.png" width="60px" height="60px"></a>
      </div>
      <div class="answer_like">
        <a id="yong_answer_like" href="#">
          <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/like.png" width="37px" height="37px">
        </a>
        <a id="yong_answer_unlike" href="#">
          <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/dislike.png" width="37px" height="37px">
        </a>
      </div>
    </div>

    <!-- 사용자의 답변 적어주는 공간 -->
    <c:set var="answerCusListSize" value="${fn:length(answerCus)}" />
    <div class="answer_title">
		<img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/a.png" width="65px" height="65px">
		<h1>사용자의 답변이 ${answerCusListSize}개 등록되어 있습니다!</h1>
	</div>
    <c:if test="${not empty answerCus}">
    	<c:forEach items="${answerCus}" varStatus="i">
		    <div class="answer_space">
		      <div class="answer_content">
		        <div class="answer_ID">
		          <!-- 뱃지 어떻게 가져올지 생각해야함... 이거 안될것같으면 뭐 질문에서 출력하는 거 처럼 그냥 출력해야지.. -->
		          <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/C_1.png" width="72px" height="72px" id="badge">
		          <font size=6 id="answer_ID">${answerCus[i.index].customerID}</font>
		        </div>
		        <h4 class="answer">
		          <font size=3 id="answer_content">&nbsp;${answerCus[i.index].answerCusContent}
		          </font>
		        </h4>
		      </div>
		      <div class="answer_like">
		        <a id="answer_like" href="#">
		          <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/like.png" width="37px" height="37px">
		          &nbsp;
		          <font size=6>
		            ${answerCus[i.index].answerCusLike}
		          </font>
		        </a>
		        <a id="answer_unlike" href="#">
		          <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/dislike.png" width="37px" height="37px">
		          &nbsp;
		          <font size=6>
		            ${answerCus[i.index].answerCusUnlike}
		          </font>
		        </a>
		      </div>
		    </div>
	    </c:forEach>
	</c:if>
	
    <div class="content"></div>

    <!-- 질문 더보기 -->
    <div class="level">질문 더보기</div>
    <div class="questions">
  		<c:forEach items="${questions}" var="question" varStatus="status" end="3">
    		<div class="question">
      			<a id="question" href="/question/onequesion?num=${status.index + 1}">
        		질문${status.index + 1}<br>
        		&nbsp;${question.questionTitle}<br><font size="1">${question.questionContent}</font>
      			</a>
    		</div>
  		</c:forEach>
	</div>
    
  </main>
</body>
</html>

