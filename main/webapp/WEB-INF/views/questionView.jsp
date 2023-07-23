<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.example.coyongyong.controller.mypageController"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- flowbite 설정 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.css"
	rel="stylesheet" />

<!-- 폰트 설정 -->
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Hi+Melody&family=Jua&family=Nanum+Gothic:wght@800&family=Poor+Story&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gowun+Dodum&family=Hi+Melody&family=Jua&family=Nanum+Gothic:wght@800&family=Poor+Story&display=swap"
	rel="stylesheet">

<link rel="icon"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png" />
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png" />
<title>CoyongYong</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/questionView.css">
</head>

<body>

	<nav class="bg-white border-gray-200 dark:bg-gray-900">
		<div
			class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
			<a href="/" class="flex items-center"> <!-- ${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon -->
				<img
				src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png"
				class="h-8 mr-3" alt="Flowbite Logo" />
			</a>
			<div class="flex items-center md:order-2">
				<!-- 로그인 버튼 -->
				<c:choose>
					<c:when test="${sessionScope.customer eq null}">
						<a href="/login">
							<button type="button"
								class="text-white bg-gradient-to-br from-pink-500 to-orange-400 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-pink-200 dark:focus:ring-pink-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2">로그인</button>
						</a>
					</c:when>
					<c:otherwise>
						<button type="button"
							class="flex mr-3 text-sm bg-gray-800 rounded-full md:mr-0 focus:ring-4 focus:ring-gray-300 dark:focus:ring-gray-600"
							id="user-menu-button" aria-expanded="false"
							data-dropdown-toggle="user-dropdown"
							data-dropdown-placement="bottom">
							<span class="sr-only">Open user menu</span> <img
								class="w-8 h-8 rounded-full background_color_white"
								src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/${customer.customerImage}"
								alt="user photo">
						</button>
					</c:otherwise>
				</c:choose>
				<!-- Dropdown menu -->
				<div
					class="z-50 hidden my-4 text-base list-none bg-white divide-y divide-gray-100 rounded-lg shadow dark:bg-gray-700 dark:divide-gray-600"
					id="user-dropdown">
					<div class="px-4 py-3">
						<span class="block font-bold text-gray-900 dark:text-white">${customer.customerID}</span>
						<span class="block text-sm text-gray-900 dark:text-white">${customer.customerNickname}</span>
						<span
							class="block text-sm  text-gray-500 truncate dark:text-gray-400">${customer.email}</span>
					</div>
					<ul class="py-2" aria-labelledby="user-menu-button">
						<li><a href="/mypage/dashboard"
							class="block px-4 py-2 bg-white text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Dashboard</a>
						</li>
						<li><a href="#"
							class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Settings</a>
						</li>
						<li><a href="#"
							class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Earnings</a>
						</li>
						<form class="hover:bg-gray-100 dark:hover:bg-gray-600"
							action="/logout" method="post">
							<button type="submit"
								class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">
								Sign out</button>
						</form>
					</ul>

				</div>
				<button data-collapse-toggle="navbar-user" type="button"
					class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
					aria-controls="navbar-user" aria-expanded="false">
					<span class="sr-only">Open main menu</span>
					<svg class="w-5 h-5" aria-hidden="true"
						xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                                <path stroke="currentColor"
							stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
							d="M1 1h15M1 7h15M1 13h15" />
                            </svg>
				</button>
			</div>
			<!--  -->
			<div
				class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1"
				id="navbar-user">
				<ul
					class="flex flex-col font-medium p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
					<li><a href="/"
						class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700"
						aria-current="page">Home</a></li>
					<li><a href="/question/questionmain?language=c"
						class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500">질문</a>
					</li>
					<li><a href="/study/list?page=1"
						class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">공부일지</a>
					</li>
					<li><a href="/problem/list?language=c"
						class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">코딩테스트</a>
					</li>
					<li><a href="#"
						class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">About</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<main>
		<div class="top block">
			<div class="toptop">
				<!-- 질문에 대한 내용 적어주는 공간. -->
				<div class="white-block">
					<img
						src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/letter-q.png"
						class="img">
					<div class="question_title">

						<span id="question_title"> <font size=4>${question.questionTitle}
						</font>
						</span> <span id="question_title"> <font size=2>${question.customerID}&nbsp;|&nbsp;${question.questionDate}</font>
						</span>
					</div>
					<div class="question_content">
						<!-- 이거는 더 이쁘게 어떻게 꾸밀지 생각좀~ -->
						<div class="flex">
							<h3 id="question_language">
								<c:choose>
									<c:when test="${gradeCustomer.languageNum eq 1}">C언어</c:when>
									<c:when test="${gradeCustomer.languageNum eq 2}">Python</c:when>
									<c:when test="${gradeCustomer.languageNum eq 1}">Java</c:when>
								</c:choose>
								- ${gradeCustomer.grade} level
							</h3>
						</div>
						<span id="languageReal" hidden> 
							<c:choose>
								<c:when test="${gradeCustomer.languageNum eq 1}">c</c:when>
								<c:when test="${gradeCustomer.languageNum eq 2}">python</c:when>
								<c:when test="${gradeCustomer.languageNum eq 1}">java</c:when>
							</c:choose>
						</span>
						<h4>&nbsp;&nbsp;${question.questionContent}</h4>
						<div id="codeContainer"></div>
						<div style="display: none;" id="innerCode">${question.questionCode}</div>
						<div class="flex justify-end">
							<!-- 여기 답변하러가기 버튼 추가~ -->
							<a class="bg-lime-700"
								href="/question/writequestionanswer?questionNum=${question.questionNum}"><button
									class="bg-lime-700">답변하러가기</button></a>
						</div>
					</div>
				</div>
				<!-- <div class="content"></div> -->

				<!-- 용용이 답변 생성 위치. -->
				<div class="white-block">
					<!-- 용용이 png 대신에 이거 넣으면 됨. -->
					<div class="flex justify-between">
						<img
							src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png"
							class="img">
					</div>
					<font size=4> 용용이의 답변이 있습니다!</font>
					<!-- 여기 div 두개 추가하고 yongyong_answer에 있는 id추가된거임! -->
					<div class="yongyong_answer" id="yongyong_answer_">
						<span id="yongyong_textContent" style="display: none;">
							${yongyong.answerYongContent} </span>
						<div id="yongyong_answer_aboveContent"></div>
						<!-- 이거 id바꿨어용 추가추가 -->
						<div id="yongyongcodeContainer">
							<div id="yongyonginnerCode" style="display: none;"></div>
						</div>
						<div id="yongyong_answer_belowContent"></div>
						<!-- 여기까지 -->
						</h4>
				
					</div>
					<div class="answer_like">
						<div class="answer_like">
							<a id="answer_like">
								<button type="button"
									class="focus:outline-none text-white bg-blue-400 hover:bg-blue-500 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800 flex items-center"
									id="subscribe">
									<img
										src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/click.png"
										width="30px" height="30px" class="heart"> <font size=5>&nbsp;채택하기</font>
								</button>
							</a>
						</div>
					</div>
				</div>

				<c:forEach items="${answerCus}" var="answer" varStatus="i">
					<!-- 사용자의 답변 적어주는 공간 -->
					<div class="white-block">
						<!-- 여기 div로 묶이고, dot_dropdown은 밑에 이씀 이거 추가~ -->
						<div class="answer_space">
							<div class="flex justify-between">
								<div class="answer_content">
									<figure class="max-w-screen-md title">
										<figcaption class="flex items-center mt-6 space-x-3">
											<img class="w-10 h-10 rounded-full"
												src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/fire_yongyong.png"
												alt="profile picture">
											<div
												class="items-center divide-x-2 divide-gray-300 dark:divide-gray-700">
												<div class="grid-2">
													<cite
														class="pr-3 font-medium text-gray-900 dark:text-white">${answer.customerID}
													</cite>

												</div>
											</div>
										</figcaption>
									</figure>
									<h4 class="answer">
										<font size=3 id="answer_content multiline-text">${answer.answerCusContent}
											<br>

										</font> <span id="answerCusCode${i.index}" hidden>${answer.answerCusCode}</span>
										<div id="customercodeContainer${i.index}"></div>

									</h4>
								</div>
								<div>
									<button data-dropdown-toggle="dot_dropdown"
										data-dropdown-placement="bottom" aria-expanded="false">
										<svg class="w-6 h-6 text-gray-800 dark:text-white"
											aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
											fill="currentColor" viewBox="0 0 4 15">
                    <path
												d="M3.5 1.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0Zm0 6.041a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0Zm0 5.959a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0Z" />
                  </svg>
									</button>
								</div>
							</div>
							<div class="answer_like">
								<a id="answer_like">
									<button type="button"
										class="focus:outline-none text-white bg-blue-400 hover:bg-blue-500 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800"
										id="like">
										<img
											src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/like.png"
											width="30px" height="30px" class="heart"> 마음에 들어요
									</button>
								</a> <a id="answer_unlike">
									<button type="button"
										class="focus:outline-none text-white bg-blue-400 hover:bg-blue-500 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800"
										id="like">
										<img
											src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/unlike.png"
											width="30px" height="30px" class="heart"> 마음에 들지 않아요
									</button>
								</a>
							</div>
						</div>
					</div>

				</c:forEach>


			</div>

		</div>
		<div class="block">
			<font size=5> 질문 더보기 </font>
			<div class="flex-grow">
				<div class="flex questionList">
					<c:forEach items="${questions}" var="question" begin="1" end="4">
						<c:set var="i"><%=java.lang.Math.round(java.lang.Math.random() * 140)%></c:set>
						<a class="question"
							href="/question/onequestion?num=${questions.get(i).questionNum}">
							<div id="question">
								<div class="flex items-center space-x-4">
									<img class="w-7 h-7 rounded-full"
										src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/uni.png"
										alt="" /> <span class="font-medium dark:text-white">
										${questions.get(i).customerID} </span>
								</div>
								<!-- 여기 추가 ㅇㅇ -->
								<div class="grid-question-list">
									<div class="question_title">
										<font size="4"> ${questions.get(i).questionTitle} </font>
									</div>
									<div class="question_content">
										<font size=2> ${questions.get(i).questionContent} </font>
									</div>
								</div>
							</div>
						</a>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- dot-dropdown 다 바뀜! 추가라고 검색하겠지? -->
		<div
			class="w-48 text-gray-900 bg-white border border-gray-200 rounded-lg dark:bg-gray-700 dark:border-gray-600 dark:text-white hidden"
			id="dot_dropdown_share">
			<button type="button" data-dropdown-toggle="dropdown_share"
				data-dropdown-placement="bottom" aria-expanded="false"
				class="relative inline-flex items-center w-full px-4 py-2 text-sm font-medium border-b border-gray-200 rounded-t-lg hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-2 focus:ring-blue-700 focus:text-blue-700 dark:border-gray-600 dark:hover:bg-gray-600 dark:hover:text-white dark:focus:ring-gray-500 dark:focus:text-white">
				공유하기 📩</button>
		</div>
		<div
			class="w-48 text-gray-900 bg-white border border-gray-200 rounded-lg dark:bg-gray-700 dark:border-gray-600 dark:text-white hidden"
			id="dropdown_share">
			<div
				class="inline-flex items-center w-full direction-column focus:outline-none">
				<button type="button"
					class="relative inline-flex items-center w-full px-4 py-2 text-sm font-medium border-b border-gray-200 rounded-t-lg hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-2 focus:ring-blue-700 focus:text-blue-700 dark:border-gray-600 dark:hover:bg-gray-600 dark:hover:text-white dark:focus:ring-gray-500 dark:focus:text-white">
					복사하기 📤</button>
				<input type="text" value="https://www.todomate.net/#/"
					class="relative inline-flex items-center w-full px-4 py-2 text-sm font-medium border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-2 focus:ring-blue-700 focus:text-blue-700 dark:border-gray-600 dark:hover:bg-gray-600 dark:hover:text-white dark:focus:ring-gray-500 dark:focus:text-white">
			</div>
		</div>
	</main>

	<footer class="p-4 bg-white md:p-8 lg:p-10 dark:bg-gray-800">
		<div class="mx-auto max-w-screen-xl text-center">
			<a
				class="flex justify-center items-center text-2xl font-semibold text-gray-900 dark:text-white">
				<img
				src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png"
				class="footer-logo">
			</a>
			<p class="my-6 text-gray-500 dark:text-gray-400">TUKOREA CP-CoP
				Dragon and Horse Coding knowledge sharing site with ChatGPT API</p>

			<ul
				class="flex flex-wrap justify-center items-center mb-6 text-gray-900 dark:text-white">
				<li><a href="#" class="mr-4 hover:underline md:mr-6 ">About</a>
				</li>

				<li><a href="#" class="mr-4 hover:underline md:mr-6 ">Email</a>
				</li>

				<li><a href="https://www.tukorea.ac.kr/tukorea/index.do#none"
					class="mr-4 hover:underline md:mr-6 ">TUKOREA</a></li>
			</ul>
			<span class="text-sm text-gray-500 sm:text-center dark:text-gray-400">©
				2023 <a href="https://www.tukorea.ac.kr/tukorea/index.do#none"
				class="hover:underline">TUKOREA</a>. All Rights Reserved.
			</span>
		</div>
	</footer>

	<!-- flowbite 설정 -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>

	<!-- 코드 스타일 시트 -->
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/styles/hybrid.min.css">
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/highlight.min.js"></script>

	<script
		src="//cdnjs.cloudflare.com/ajax/libs/highlightjs-line-numbers.js/2.7.0/highlightjs-line-numbers.min.js"></script>

	<script>
		hljs.initHighlightingOnLoad();
	</script>
	<script>
		hljs.initLineNumbersOnLoad();
	</script>

	<script
		src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/questionView.js"></script>



</body>

</html>