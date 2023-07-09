<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.example.coyongyong.controller.mypageController"%>

    <!DOCTYPE html>
    <html lang="ko">
    
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Nanum+Gothic:wght@700&display=swap">
        <script>var require = { paths: { 'vs': '/node_modules/monaco-editor/min/vs' } };</script>
        <script th:src="@{/node_modules/monaco-editor/min/vs/loader.js}"></script>
        <script th:src="@{/node_modules/monaco-editor/min/vs/editor/editor.main.nls.js}"></script>
        <script th:src="@{/node_modules/monaco-editor/min/vs/editor/editor.main.js}"></script>
        <title>코테</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/problem.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.css" rel="stylesheet" />
    
    </head>
    
    <body>
        <nav class="bg-white border-gray-200 dark:bg-gray-900">
            <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
                <a href="http://localhost:8080" class="flex items-center">
                    <!-- ${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon -->
                    <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png" class="h-8 mr-3" alt="Flowbite Logo" />
                </a>
                <div class="flex items-center md:order-2">
                    <!-- 로그인 버튼 -->
                    <!-- <button type="button" class="text-white bg-gradient-to-br from-pink-500 to-orange-400 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-pink-200 dark:focus:ring-pink-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2">로그인</button> -->
                    <button type="button"
                        class="flex mr-3 text-sm bg-gray-800 rounded-full md:mr-0 focus:ring-4 focus:ring-gray-300 dark:focus:ring-gray-600"
                        id="user-menu-button" aria-expanded="false" data-dropdown-toggle="user-dropdown"
                        data-dropdown-placement="bottom">
                        <span class="sr-only">Open user menu</span>
                        <img class="w-8 h-8 rounded-full background_color_white" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="user photo">
                    </button>
                    <!-- Dropdown menu -->
                    <div class="z-50 hidden my-4 text-base list-none bg-white divide-y divide-gray-100 rounded-lg shadow dark:bg-gray-700 dark:divide-gray-600"
                        id="user-dropdown">
                        <div class="px-4 py-3">
                            <span class="block text-sm text-gray-900 dark:text-white">전현준 : StayC</span>
                            <span
                                class="block text-sm  text-gray-500 truncate dark:text-gray-400">guswns7452@tukorea.ac.kr</span>
                        </div>
                        <ul class="py-2" aria-labelledby="user-menu-button">
                            <li>
                <a href="http://localhost:8080/mypage/dashboard"
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
                            <li>
                                <a href="#"
                                    class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600 dark:text-gray-200 dark:hover:text-white">Sign
                                    out</a>
                            </li>
                        </ul>
                    </div>
                    <button data-collapse-toggle="navbar-user" type="button"
                        class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                        aria-controls="navbar-user" aria-expanded="false">
                        <span class="sr-only">Open main menu</span>
                        <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                            viewBox="0 0 17 14">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M1 1h15M1 7h15M1 13h15" />
                        </svg>
                    </button>
                </div>
                <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-user">
                    <ul
                        class="flex flex-col font-medium p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
                        <li>
                            <a href="#"
                                class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500"
                                aria-current="page">Home</a>
                        </li>
                        <li>
                            <a href="#"
                                class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">질문</a>
                        </li>
                        <li>
                            <a href="#"
                                class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">공부일지</a>
                        </li>
                        <li>
                            <a href="#"
                                class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">코딩테스트</a>
                        </li>
                        <li>
                            <a href="#"
                                class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">About</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    
        <div class="content"></div>
        <div id="container">
            <div id="left">
                <div id="question">
                    <h1>문제 1 : A+B<br><br></h1>
                    <h2>문제</h2>
                    <h3>
                        두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
                        <br><br>
                    </h3>
                    <h2>
                        입력 <br>
                    </h2>
                    <h3>
                        첫째 줄에 A와 B가 주어진다. (0 < A, B < 10) <br><br></h3>
                    <h2>
                        출력 <br>
                    </h2>
                    <h3>
                        첫째 줄에 A+B를 출력한다.
                        <br><br>
                    </h3>
                </div>
    
            </div>
            <div id="right">
                <div class="white_font_color">사용 언어</div>
                <div id="monaco" style="height:70vh"></div>
                <button type="button" class="focus:outline-none text-white bg-purple-700 hover:bg-purple-800 focus:ring-4 focus:ring-purple-300 font-medium rounded-lg text-sm px-5 py-2.5 mb-2 dark:bg-purple-600 dark:hover:bg-purple-700 dark:focus:ring-purple-900 fixed right-5 purpleButton">제출하기</button>
            </div>
        </div>
    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.3.6/require.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.16.2/min/vs/loader.js"></script>
    
        <script>
            var editor;
    
            require.config({ paths: { 'vs': 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.16.2/min/vs' } });
            require(['vs/editor/editor.main'], function () {
                editor = monaco.editor.create(document.getElementById('monaco'), {
                    theme: 'vs-dark',
                    fontFamily: 'Consolas',
                    automaticLayout: true,
                    fontSize: 25,
                    language: 'c',
                    value: [
                        '#include <stdio.h>',
                        'int main(){',
                        '}'
                    ].join('\n')
                });
            });
        </script>
        <!-- <script src="Main.js"></script> -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>
    
    </body>
    
    </html>