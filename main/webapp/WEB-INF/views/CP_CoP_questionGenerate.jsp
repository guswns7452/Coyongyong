<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Nanum+Gothic:wght@700&display=swap">

<title>Coyongyong_QueationGenerate</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/questionGenerate.css">
</head>

<body>
	<main>
		<!-- 로고와 로그인, 회원가입 (로그인 안되어있을 시) -->
		<!-- 로그인 되어있으면 블락처리 -->
		<!-- <div class="topbar">
      <div class="logo"><br>
        <a href="#"><img src="logo.png"></a>
      </div>

      <div class="loginbar_search">
        <div class="search-box">
          <input type="text" class="search-txt" name="" placeholder="search...">
          <a class="search-btn" href="#">
            <i class="fas fa-search"></i>
          </a>
        </div>

        <div class="loginbar">
          <a href="https://naver.com" id=mainLogin>Log in</a>
          <a href="https://naver.com" id=makeAccount>Sign up</a>
        </div>
      </div>
    </div> -->

		<!-- 로고와 배지, 로그아웃 (로그인 되어있을 시) -->
		<!-- 로그인 안되어있으면 블락처리 -->
		<div class="topbar">
			<div class="logo">
				<br> <a href="#"><img
					src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png"></a>
			</div>
			<div class="loginbar_search">
				<div class="search-box">
					<input type="text" class="search-txt" name=""
						placeholder="search..."> <a class="search-btn" href="#">
						<i class="fas fa-search"></i>
					</a>
				</div>
				<div class="loginbar_login">
					<a href="https://naver.com" id=mainLogin>Mypage</a> <a
						href="https://naver.com" id=makeAccount>Log out</a>
				</div>
			</div>
		</div>

		<div class="content"></div>

		<h1 class="title">질문글 작성하기</h1>

		<div class="question">

			<form name=form action="http://localhost:8080/question/writequestion"
				method="post">
				<div class="question_title">
					<input name="questionTitle" type="text" id="question_title" placeholder="제목을 입력해주세요">
				</div>

				<select name="title" class="option">
					<option value="none">게시글 카테고리 선택</option>
					<option value="How to use a function">함수 사용법</option>
					<option value="How to write code">코드 작성법</option>
					<option value="Error scanning">오류 검색</option>
				</select> 
				
				<select name="title" class="option">
					<option value="none">언어 선택</option>
					<option value="C">C</option>
					<option value="C#">C#</option>
					<option value="Python">Python</option>
					<option value="Java">Java</option>
				</select>

				<h2 id="title">오류 내용 작성하기</h2>
				<div class="input_content">
					<input type="text" id="error_content" placeholder="오류 내용을 입력해주세요">
				</div>

				<h2 id="title">질문 내용 작성하기</h2>
				<div class="input_content">
					<input name="questionContent" type="text" id="question_content"
						placeholder="질문 내용을 입력해주세요">
				</div>

				<h2 id="title">코드 내용 작성하기</h2>
				<div class="input_content">
					<input type="text" id="code_content" placeholder="코드 내용을 입력해주세요">
				</div>

				<input type="submit" id="submit_btn" value="제출하기">
			</form>
		</div>
	</main>
	<!-- <script src="Main.js"></script> -->
</body>