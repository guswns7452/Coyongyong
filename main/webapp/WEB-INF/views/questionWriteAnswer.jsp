<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Nanum+Gothic:wght@700&display=swap">

<title>coyongyong_writeAnswer</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/questionWriteAnswer.css">


<!-- flowbite 설정 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.css"
	rel="stylesheet" />

<!-- include summernote css/js-->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
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
							class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Dashboard</a>
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
                  <path stroke="currentColor" stroke-linecap="round"
							stroke-linejoin="round" stroke-width="2"
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
		<div class="top">
			<div class="toptop rounded-lg p-2.5">
				<div class="title">
					<font size=6> 원본 질문 </font>
				</div>

				<!-- 질문에 대한 내용 적어주는 공간. -->
				<div class="background">
					<figure class="max-w-screen-md title">
						<figcaption class="flex items-center space-x-3">
							<img class="w-10 h-10 rounded-full"
								src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/nicon.png"
								alt="profile picture">
							<div
								class="items-center divide-x-2 divide-gray-300 dark:divide-gray-700">
								<cite class="pr-3 font-medium text-gray-900 dark:text-white">${question.customerID}
								</cite>
							</div>
						</figcaption>
					</figure>
					<div class="question_title">
						<div class="flex justify-between">
							<span id="question_title"> <font size=4>${question.questionTitle}
							</font>
							</span>
						</div>
					</div>
					<div class="question_content">
						<!-- 이거는 더 이쁘게 어떻게 꾸밀지 생각좀~ -->

						<h4>${question.questionContent}</h4>
						<div class="content"></div>
						<span id="answerCusCode" style="display: none;">${question.questionCode}</span>
						<div id="customercodeContainer"></div>
						<div class="content"></div>
						${question.questionError}

						<div id="codeContainer"></div>
					</div>
				</div>

				<div class="mt-6 title">
					<font size=6> 답변 작성 </font>
				</div>
				<section class="dark:bg-gray-900 background">
					<div id="top">
						<form id="writeAnswerCus" action="/question/writequestionanswer"
							method="post">
							<div class="block gap-4 sm:grid-cols-2 sm:gap-6">
								<!-- 공부일지 제목 작성부분 바뀜 -->
								<div class="sm:col-span-2 w-full">
									<label for="name"
										class="block mb-2 text-sm font-medium text-gray-900 dark:text-white w-full"></label>
									<div class="div w-full">
										<input type="text" name="answerCusTitle" required=""
											class="input w-full focus:ring-0"> <label
											class="label">답변 제목 작성</label> <span class="span"></span>
									</div>
									<label for="category"
										class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Language
										select</label> <select id="categoryLanguage"
										class="bg-gray-50 border border-primary-300 text-primary-900 text-sm rounded-lg border-primary-700 focus:ring-0 dark:bg-primary-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 margin-bottom language-selecter input_conts">
										<option value="">Language</option>
										<option value="1">C</option>
										<option value="3">Java</option>
										<option value="2">Python</option>
									</select>
									<div>
										<div class="sm:col-span-2">
											<!-- 코드 작성하기 버튼부터 modal을 포함하고 있는 div 바꾸기 -->
											<div
												class="margin-bottom w-full text-sm text-gray-900 rounded-lg focus:ring-0 border-primary-700 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500">

												<!-- Main modal -->
												<div id="defaultModal" tabindex="-1" aria-hidden="true"
													class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-modal md:h-full">
													<div class="relative p-4 w-full max-w-2xl h-full md:h-auto">
														<!-- Modal content -->
														<div
															class="relative p-4 bg-white rounded-lg shadow dark:bg-gray-800 sm:p-5">
															<!-- Modal header -->
															<div
																class="flex justify-between items-center pb-4 mb-4 rounded-t border-b sm:mb-5 dark:border-gray-600">
																<h3
																	class="text-lg font-semibold text-gray-900 dark:text-white">
																	코드 작성</h3>
																<button type="button"
																	class="text-white bg-lime-700 bg-transparent rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-600 dark:hover:text-white"
																	data-modal-toggle="defaultModal">
																	<svg aria-hidden="true" class="w-5 h-5"
																		fill="currentColor" viewBox="0 0 20 20"
																		xmlns="http://www.w3.org/2000/svg">
                                                         <path
																			fill-rule="evenodd"
																			d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
																			clip-rule="evenodd"></path>
                                                      </svg>
																	<span class="sr-only">Close modal</span>
																</button>
															</div>

															<form action="#">
																<div class="grid gap-4 mb-4 sm:grid-cols-2">
																	<div class="sm:col-span-2 justify-center">
																		<div id="monaco" style="width: 600px; height: 400px"></div>
																	</div>
																</div>
																<button id="defaultModalButton"
																	data-modal-toggle="defaultModal" type="button"
																	class="block text-white bg-lime-700 focus:outline-none font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800 code-btn"
																	onclick="javascript: submitCode(); addCodeForm();">
																	코드 제출</button>
															</form>

														</div>
													</div>
												</div>

												<!-- 여기 추가 -->
												<form class="border-lime-500">
													<div
														class="w-full mb-4 rounded-lg bg-lime-100 dark:bg-gray-700 dark:border-gray-600">
														<div
															class="flex items-center justify-between px-3 py-2 border-b dark:border-gray-600 divide-lime-500">
															<!-- Modal toggle -->
															<div class="flex m-5">
																<button id="defaultModalButton"
																	data-modal-toggle="defaultModal"
																	class="block text-white bg-lime-700 focus:outline-none font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800 code-btn"
																	type="button" onclick="checkLanguage()">코드
																	작성하기</button>
															</div>
														</div>
													</div>
													<div
														class="px-4 py-2 bg-white rounded-b-lg dark:bg-gray-800">
														<label for="description"
															class="flex mb-2 text-sm font-medium text-gray-900 dark:text-white">답변
															내용 작성</label> <label for="editor" class="sr-only">제출하기</label>
														<div id="myTextarea"
															class="ring-0 focus:border-white focus:border-0"
															contentEditable='true' height="200px"></div>
													</div>
												</form>
											</div>
											<!-- 모나코 에디터 변경 -->
											<div class="border-lime-500 border_" style="display: none;" id="code-label">
												<label for="description"
													class="flex mb-2 text-sm font-medium text-gray-900 dark:text-white error_label">코드
													내용</label>

												<div id="monaco-container"></div>
											</div>
											<div class="submit_btn">
												<input type="button"
													class="text-white bg-lime-700 hover:bg-green-500 focus:outline-none font-medium rounded-lg text-sm p-2.5 text-center inline-flex items-center mr-2 justify-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
													value="제출하기" onclick="submitForm()">
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</section>
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

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.3.6/require.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.16.2/min/vs/loader.js"></script>
	<script src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/questionWriteAnswer.js"></script>
	<script>
		function submitForm() {
			var divContent = document.getElementById('myTextarea').innerHTML;
			var hiddenInput = document.createElement('input');

			// 숫자로 변환 1.C 2.Py 3.Java
			var divContentlanguage = Number(document
					.getElementById('categoryLanguage').options[document
					.getElementById("categoryLanguage").selectedIndex].value);
			var hiddenInputlanguage = document.createElement('input');

			hiddenInput.type = 'hidden';
			hiddenInput.name = 'answerCusContent';

			hiddenInput.value = divContent;

			document.getElementById('writeAnswerCus').appendChild(hiddenInput);

			if (divContent.trim() != '') {
				document.getElementById('writeAnswerCus').submit();
			} else {
				alert("답변 내용을 작성하세요!");
			}
		}
	</script>

	<script>
		var editor;
		var lang;

		function checkLanguage() {
			var divContentlanguage = Number(document
					.getElementById('categoryLanguage').options[document
					.getElementById("categoryLanguage").selectedIndex].value);
			if (divContentlanguage == 0) {
				document.getElementById('monaco').innerHTML = "언어를 먼저 선택해주세요.";
			} else {
				if (divContentlanguage == 1)
					lang = 'c';
				else if (divContentlanguage == 2)
					lang = 'python';
				else if (divContentlanguage == 3)
					lang = 'java';

				document.getElementById('monaco').innerHTML = "";
				require
						.config({
							paths : {
								'vs' : 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.16.2/min/vs'
							}
						});

				require([ 'vs/editor/editor.main' ], function() {
					editor = monaco.editor.create(document
							.getElementById('monaco'), {
						theme : 'vs-dark',
						fontFamily : 'Consolas',
						automaticLayout : true,
						fontSize : 17,
						language : lang
					});
				});

			}
		}

		function addCodeForm() {
			if (editor.getValue()) {
				var hiddenInputCode = document.createElement('input');

				hiddenInputCode.type = 'hidden';
				hiddenInputCode.name = 'answerCusCode';
				hiddenInputCode.value = editor.getValue();
				document.getElementById('writeAnswerCus').appendChild(
						hiddenInputCode);
			}
		}
	</script>

	<script>
		// Monaco Editor 스크립트 로드
	</script>

	<script>
		function submitCode() {
			// Monaco 에디터의 내용 가져오기
			var editorContent = editor.getValue();

			var divContentlanguage = Number(document
					.getElementById('categoryLanguage').options[document
					.getElementById("categoryLanguage").selectedIndex].value);
			var lang;

			if (divContentlanguage == 1)
				lang = 'c';
			else if (divContentlanguage == 2)
				lang = 'python';
			else if (divContentlanguage == 3)
				lang = 'java';

			// editorContent를 원하는 방식으로 처리
			console.log("Monaco 에디터 내용:", editorContent);
			// 여기서는 콘솔에 로그를 출력하도록 예시로 작성하였습니다.

			require
					.config({
						paths : {
							'vs' : 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.26.1/min/vs'
						}
					});
			require(
					[ 'vs/editor/editor.main' ],
					function() {
						// Monaco Editor 인스턴스 생성

						document.getElementById('monaco-container').innerHTML = "";
						var editordown = monaco.editor.create(document
								.getElementById('monaco-container'), {
							value : editorContent,
							language : lang,
							automaticLayout : true,
							theme : 'vs-dark'
						});

						var lineCount = editor.getModel().getLineCount();
						// Monaco Editor의 높이를 계산하기 위한 기본 높이 값
						var lineHeight = 21; // 한 줄의 높이 (예시 값)
						// Monaco Editor 요소 선택
						var monacoContainer = document
								.getElementById('monaco-container');
						// Monaco Editor의 높이 계산
						var editorHeight = lineCount * lineHeight;
						// Monaco Editor 요소의 높이 설정
						monacoContainer.style.height = editorHeight + 'px';

						// Monaco Editor에 값이 있는지 확인하여 출력 여부 결정
						if (editorContent) {
							console.log('값이 있음!');
							document.getElementById('monaco-container').style.display = 'block'; // Monaco Editor 숨김
							document.getElementById('code-label').style.display = 'block';

						} else {
							console.log('값이 없음!');
							document.getElementById('monaco-container').style.display = 'none'; // Monaco Editor 숨김
							document.getElementById('code-label').style.display = 'none';
						}
					});
		}
	</script>
</body>

</html>