<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
 <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/right_problem.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.css" rel="stylesheet" />
    <link rel="icon" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png"/>
	<title>CoyongYong</title>
  </head>

<body>
	<nav class="bg-white border-gray-200 dark:bg-gray-900">
          <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
            <a href="/" class="flex items-center">
              <!-- ${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon -->
              <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png" class="h-8 mr-3" alt="Flowbite Logo" />
            </a>
            <div class="flex items-center md:order-2">
              <!-- 로그인 버튼 -->
              <c:choose>
			    <c:when test="${sessionScope.customer eq null}">
					<a href="/login" >
						<button type="button" class="text-white bg-gradient-to-br from-pink-500 to-orange-400 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-pink-200 dark:focus:ring-pink-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2">로그인</button>
			    	</a>
				</c:when>
			    <c:otherwise>
					<button type="button"
	                class="flex mr-3 text-sm bg-white rounded-full md:mr-0 focus:ring-4 focus:ring-gray-300 dark:focus:ring-gray-600"
	                id="user-menu-button" aria-expanded="false" data-dropdown-toggle="user-dropdown"
	                data-dropdown-placement="bottom">
	                <span class="sr-only">Open user menu</span>
	                <img class="w-8 h-8 rounded-full background_color_white" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/${customer.customerImage}" alt="user photo">
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
                  <span class="block text-sm  text-gray-500 truncate dark:text-gray-400">${customer.email}</span>
                </div>
                <ul class="py-2" aria-labelledby="user-menu-button">
                  <li>
                    <a href="/mypage/dashboard"
                      class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Dashboard</a>
                  </li>
                  <li>
                    <a href="#"
                      class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Settings</a>
                  </li>
                  <li>
                    <a href="#"
                      class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Earnings</a>
                  </li>
                  <form class="hover:bg-gray-100 dark:hover:bg-gray-600" action="/logout" method="post">
				    <button type="submit" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">
				        Sign out
				    </button>
				</form>
                </ul>
			    
              </div>
              <button data-collapse-toggle="navbar-user" type="button"
                class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                aria-controls="navbar-user" aria-expanded="false">
                <span class="sr-only">Open main menu</span>
                <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                  <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M1 1h15M1 7h15M1 13h15" />
                </svg>
              </button>
            </div>
            <!--  -->
            <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-user">
              <ul
                class="flex flex-col font-medium p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
                <li>
                  <a href="/"
                    class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700"
                    aria-current="page">Home</a>
                </li>
                <li>
                  <a href="/problem/list?language=c"
                    class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">질문</a>
                </li>
                <li>
                  <a href="/study/list?page=1"
                    class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">공부일지</a>
                </li>
                <li>
                  <a href="/problem/list?language=c"
                    class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500">코딩테스트</a>
                </li>
                <li>
                  <a href="#"
                    class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">About</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>

	<div id="container">
		<img class="congra" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/firework.png">
		<!-- <div class="h3">축하합니다</div> -->
		<div class="h1">정답입니다~</div>
		<div>
			<a href="/problem/list?language=c"><input type="button" data-modal-target="readProductModal" data-modal-toggle="readProductModal"
					class="focus:outline-none text-white bg-purple-700 hover:bg-purple-800 focus:ring-4 focus:ring-purple-300 font-medium rounded-lg text-sm px-5 py-2.5 mb-2 dark:bg-purple-600 dark:hover:bg-purple-700 dark:focus:ring-purple-900 purpleButton"
					value="코딩 테스트 바로가기"></a>
					
		</div>
	</div>
	
	<!-- 여기 용용이 답변 기다리는 내용의 modal 추가 -->
		<!-- Main modal -->
		<div id="readProductModal" tabindex="-1" class="overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-modal md:h-full hidden" aria-hidden="true">
			<div class="relative p-4 w-full max-w-xl h-full md:h-auto">
				<!-- Modal content -->
				<div class="relative p-4 bg-white rounded-lg shadow dark:bg-gray-800 sm:p-5">
					<!-- Modal header -->
					<div class="flex justify-center">
						<div class="flex flex-column mb-4 rounded-t sm:mb-5" style="margin-top: 10px;">
							<img src="/resources/views/CP_CoP_front/icon/yongyong.png" width="100px" height="100px" class="maargin-left maargin-top">
							<div>
								<font size="6"> 용용이가 답변을 생성중이에요~<br>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;잠시만 기다려주세요~
								</font>
							</div>
							<div role="status flex items-center" class="margin-top maaargin-left maargin-bottom">
								<svg aria-hidden="true" class="inline w-12 h-12 mr-2 text-gray-200 animate-spin dark:text-gray-600 fill-green-500" viewBox="0 0 100 101" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z" fill="currentColor"></path>
                  <path d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z" fill="currentFill"></path>
                </svg>
								<span class="sr-only">Loading...</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 요기까지 -->
	
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

				<li>
					<button type="button" data-modal-target="defaultModal"
						data-modal-toggle="defaultModal"
						class="mr-4 hover:underline md:mr-6 ">Email</button>
				</li>

				<li><a href="https://www.tukorea.ac.kr/tukorea/index.do#none"
					class="mr-4 hover:underline md:mr-6 ">TUKOREA</a></li>
			</ul>
			<span class="text-sm text-gray-500 sm:text-center dark:text-gray-400">©
				2023 <a href="https://www.tukorea.ac.kr/tukorea/index.do#none"
				class="hover:underline">TUKOREA</a>. All Rights Reserved.
			</span>
		</div>
		<!-- Main modal -->
		<div id="defaultModal" tabindex="-1" aria-hidden="true"
			class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full">
			<div class="relative w-full max-w-2xl max-h-full">
				<!-- Modal content -->
				<div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
					<!-- Modal header -->
					<div
						class="flex items-start justify-between p-4 border-b rounded-t dark:border-gray-600">
						<h3 class="text-xl font-semibold text-gray-900 dark:text-white">
							Email</h3>
						<button type="button"
							class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ml-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
							data-modal-hide="defaultModal">
							<svg class="w-3 h-3" aria-hidden="true"
								xmlns="http://www.w3.org/2000/svg" fill="none"
								viewBox="0 0 14 14">
                        <path stroke="currentColor"
									stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
									d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                    </svg>
							<span class="sr-only">Close modal</span>
						</button>
					</div>
					<!-- Modal body -->
					<div class="p-6 space-y-6">
						<p
							class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
							연락이 필요하시면 아래로 연락 주세요.</p>
						<p
							class="text-base leading-relaxed text-gray-500 dark:text-gray-400">
							guswns7452@tukorea.ac.kr</p>
					</div>
					<!-- Modal footer -->
					<div
						class="flex items-center p-6 space-x-2 border-t border-gray-200 rounded-b dark:border-gray-600">
						<button data-modal-hide="defaultModal" type="button"
							class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
							accept</button>
						
					</div>
				</div>
			</div>
		</div>
	</footer>



	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.3.6/require.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.16.2/min/vs/loader.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>

	<script>
        	var lang = document.getElementById("language").innerHTML;
            var editor;
    
            require.config({ paths: { 'vs': 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.16.2/min/vs' } });
            require(['vs/editor/editor.main'], function () {
                editor = monaco.editor.create(document.getElementById('monaco'), {
                    theme: 'vs-dark',
                    fontFamily: 'Consolas',
                    automaticLayout: true,
                    fontSize: 20,
                    language: lang
                });
            });
            
            function submitForm() {
                if (editor.getValue()) {
                var hiddenInputCode = document.createElement('input');

                hiddenInputCode.type = 'hidden';
                hiddenInputCode.name = 'code';
                hiddenInputCode.value = editor.getValue();
                document.getElementById('problemForm').appendChild(
                    hiddenInputCode);
                

                document.getElementById('problemForm').submit();
                }
            }
        </script>
</body>

</html>