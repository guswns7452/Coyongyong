<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Nanum+Gothic:wght@700&display=swap">

  <!--=============== CSS ===============-->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/default.css">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.css" rel="stylesheet" />

  <title>koyongyong_Main</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/Main.css">
</head>

<body>
  <main>
    <nav class="bg-white border-gray-200 dark:bg-gray-900">
      <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
        <a href="http://localhost:8080/" class="flex items-center">
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
          <div
            class="z-50 hidden my-4 text-base list-none bg-white divide-y divide-gray-100 rounded-lg shadow dark:bg-gray-700 dark:divide-gray-600"
            id="user-dropdown">
            <div class="px-4 py-3">
              <span class="block text-sm text-gray-900 dark:text-white">전현준 : StayC</span>
              <span class="block text-sm  text-gray-500 truncate dark:text-gray-400">guswns7452@tukorea.ac.kr</span>
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
            <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
              <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M1 1h15M1 7h15M1 13h15" />
            </svg>
          </button>
        </div>
        <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-user">
          <ul
            class="flex flex-col font-medium p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
            <li>
              <a href="http://localhost:8080/"
                class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500"
                aria-current="page">Home</a>
            </li>
            <li>
              <a href="http://localhost:8080/question/questionlist"
                class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">질문</a>
            </li>
            <li>
              <a href="http://localhost:8080/study/list"
                class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">공부일지</a>
            </li>
            <li>
              <a href="http://localhost:8080/problem/list"
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

    <!-- 배너 -->
    <div class="flex justify-center items-center" alt="">
      <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/banner.png" class="banner">
      <h1 class="banner_title">코딩 문답 사이트</h1>
    </div>

    <div class="top">
      <div class="toptop">
        <section class="bg-white dark:bg-gray-900">
          <div class="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
            <div class="mx-auto max-w-screen-sm text-center lg:mb-16 mb-8">
              <h2 class="mb-4 text-3xl lg:text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white">오늘의 질문
                TOP3</h2>
            </div>
            <div class="flex gap-8">
              <article
                class="p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
                <div class="flex justify-between items-center mb-5 text-gray-500">
                  <span
                    class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                  </span>
                  <div class="img_date">
                    <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_first.png" width="10%" height="10%">
                    <span class="text-sm">2023.07.09</span>
                  </div>
                </div>
                <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">무슨 질문을 할 것
                    같나요?</h2>
                <p class="mb-5 font-light text-gray-500 dark:text-gray-400">Static websites are now used to bootstrap
                  lots of websites and are becoming the basis for a variety of tools that even influence both web
                  designers and developers influence both web designers and developers.</p>
                <div class="flex justify-between items-center">
                  <div class="flex items-center space-x-4">
                    <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="Jese Leos avatar" />
                    <span class="font-medium dark:text-white">
                      현준 전
                    </span>
                  </div>
                  <!-- TODO : 질문마다 뽑아오는거 -->
                  <a href="#"
                    class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
                    Read more
                    <svg class="ml-2 w-4 h-4" fill="currentColor" viewBox="0 0 20 20"
                      xmlns="http://www.w3.org/2000/svg">
                      <path fill-rule="evenodd"
                        d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                        clip-rule="evenodd"></path>
                    </svg>
                  </a>
                </div>
              </article>
              <article
                class="p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
                <div class="flex justify-between items-center mb-5 text-gray-500">
                  <span
                    class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                  </span>
                  <div class="img_date">
                    <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_second.png" width="10%" height="10%">
                    <span class="text-sm">2023.07.09</span>
                  </div>
                </div>
                <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">우왕
                    2등이다앙~</h2>
                <p class="mb-5 font-light text-gray-500 dark:text-gray-400">Static websites are now used to bootstrap
                  lots of websites and are becoming the basis for a variety of tools that even influence both web
                  designers and developers influence both web designers and developers.</p>
                <div class="flex justify-between items-center">
                  <div class="flex items-center space-x-4">
                    <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="Bonnie Green avatar" />
                    <span class="font-medium dark:text-white">
                      민지 킴
                    </span>
                  </div>
                  <a href="#"
                    class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
                    Read more
                    <svg class="ml-2 w-4 h-4" fill="currentColor" viewBox="0 0 20 20"
                      xmlns="http://www.w3.org/2000/svg">
                      <path fill-rule="evenodd"
                        d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                        clip-rule="evenodd"></path>
                    </svg>
                  </a>
                </div>
              </article>
              <article
                class="p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
                <div class="flex justify-between items-center mb-5 text-gray-500">
                  <span
                    class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                  </span>
                  <div class="img_date">
                    <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_third.png" width="10%" height="10%">
                    <span class="text-sm">2023.07.09</span>
                  </div>
                </div>
                <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">chatGPT
                    만만세~~</h2>
                <p class="mb-5 font-light text-gray-500 dark:text-gray-400">Static websites are now used to bootstrap
                  lots of websites and are becoming the basis for a variety of tools that even influence both web
                  designers and developers influence both web designers and developers.</p>
                <div class="flex justify-between items-center">
                  <div class="flex items-center space-x-4">
                    <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="Jese Leos avatar" />
                    <span class="font-medium dark:text-white">
                      다현 리
                    </span>
                  </div>
                  <a href="#"
                    class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
                    Read more
                    <svg class="ml-2 w-4 h-4" fill="currentColor" viewBox="0 0 20 20"
                      xmlns="http://www.w3.org/2000/svg">
                      <path fill-rule="evenodd"
                        d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                        clip-rule="evenodd"></path>
                    </svg>
                  </a>
                </div>

              </article>
            </div>
          </div>
        </section>

        <!-- 로그인 되어있을 때 -->
        <section class="bg-white dark:bg-gray-900">
          <div class="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
            <div class="mx-auto max-w-screen-sm text-center lg:mb-16 mb-8">
              <h2 class="mb-4 text-3xl lg:text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white">관련있는 질문
              </h2>
            </div>
            <div class="grid-cols-4 gap-8">
              <article
                class="p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
                <div class="container">
                  <div class="flex justify-between items-center mb-5 text-gray-500">
                    <span
                      class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                    </span>
                    <span class="text-sm">2023.07.09</span>
                  </div>
                  <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">무슨 질문을 할 것
                      같나요?</h2>
                  <div class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">Static websites are now used to bootstrap
                    lots of websites and are becoming the basis for a variety of tools that even influence both web
                    designers and developers influence both web designers and developers.</div>
                  <div class="flex justify-between items-center">
                    <div class="flex items-center space-x-4">
                      <button>
                        <img data-popover-target="popover-user-profile" class="w-7 h-7 rounded-full profile"
                          src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="Jese Leos avatar"/>
                      </button>
                    </div>
                    <span class="font-medium dark:text-white">
                      현준 전
                    </span>
                    <a href="#"
                      class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
                      답변하러 가기
                      <svg class="ml-2 w-4 h-4" fill="currentColor" viewBox="0 0 20 20"
                        xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                          d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                          clip-rule="evenodd"></path>
                      </svg>
                    </a>
                  </div>
                </div>
              </article>
              <article
                class="p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
                <div class="container">
                  <div class="flex justify-between items-center mb-5 text-gray-500">
                    <span
                      class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                    </span>
                    <span class="text-sm">2023.07.09</span>
                  </div>
                  <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white"><a href="#">우왕
                      2등이다앙~</a></h2>
                  <p class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">Static websites are now used to bootstrap
                    lots of websites and are becoming the basis for a variety of tools that even influence both web
                    designers and developers influence both web designers and developers.</p>
                  <div class="flex justify-between items-center">
                    <div class="flex items-center space-x-4">
                      <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="" />
                      <span class="font-medium dark:text-white">
                        민지 킴
                      </span>
                    </div>
                    <a href="#"
                      class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
                      답변하러 가기
                      <svg class="ml-2 w-4 h-4" fill="currentColor" viewBox="0 0 20 20"
                        xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                          d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                          clip-rule="evenodd"></path>
                      </svg>
                    </a>
                  </div>
                </div>
              </article>
              <article
                class="p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
                <div class="container">
                  <div class="flex justify-between items-center mb-5 text-gray-500">
                    <span
                      class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                    </span>
                    <span class="text-sm">2023.07.09</span>
                  </div>
                  <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">chatGPT
                      만만세~~</h2>
                  <p class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">Static websites are now used to bootstrap
                    lots of websites and are becoming the basis for a variety of tools that even influence both web
                    designers and developers influence both web designers and developers.</p>
                  <div class="flex justify-between items-center">
                    <div class="flex items-center space-x-4">
                      <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="Jese Leos avatar" />
                      <span class="font-medium dark:text-white">
                        다현 리
                      </span>
                    </div>
                    <a href="#"
                      class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
                      답변하러 가기
                      <svg class="ml-2 w-4 h-4" fill="currentColor" viewBox="0 0 20 20"
                        xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                          d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                          clip-rule="evenodd"></path>
                      </svg>
                    </a>
                  </div>
                </div>
              </article>
              <article
                class="p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
                <div class="container">
                  <div class="flex justify-between items-center mb-5 text-gray-500">
                    <span
                      class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                    </span>
                    <span class="text-sm">2023.07.09</span>
                  </div>
                  <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">chatGPT
                      만만세~~</h2>
                  <p class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">Static websites are now used to bootstrap
                    lots of websites and are becoming the basis for a variety of tools that even influence both web
                    designers and developers influence both web designers and developers.</p>
                  <div class="flex justify-between items-center">
                    <div class="flex items-center space-x-4">
                      <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="Jese Leos avatar" />
                      <span class="font-medium dark:text-white">
                        다현 리
                      </span>
                    </div>
                    <a href="#"
                      class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
                      답변하러 가기
                      <svg class="ml-2 w-4 h-4" fill="currentColor" viewBox="0 0 20 20"
                        xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                          d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                          clip-rule="evenodd"></path>
                      </svg>
                    </a>
                  </div>
                </div>
              </article>
            </div>
          </div>
        </section>

        <!-- 로그인 X일때 -->
        <section class="bg-white dark:bg-gray-900">
          <div class="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
            <div class="mx-auto max-w-screen-sm text-center lg:mb-16 mb-8">
              <h2 class="mb-4 text-3xl lg:text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white">가장 최근에
                올라온 질문</h2>
            </div>
            <div class="Grid grid-cols-4 gap-8">
              <article
                class="p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
                <div class="container">
                  <div class="flex justify-between items-center mb-5 text-gray-500">
                    <span
                      class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                    </span>
                    <span class="text-sm">2023.07.09</span>
                  </div>
                  <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">무슨 질문을 할 것
                      같나요?</h2>
                  <p class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">Static websites are now used to bootstrap
                    lots of websites and are becoming the basis for a variety of tools that even influence both web
                    designers and developers influence both web designers and developers.</p>
                  <div class="flex justify-between items-center">
                    <div class="flex items-center space-x-4">
                      <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="Jese Leos avatar" />
                      <span class="font-medium dark:text-white">
                        현준 전
                      </span>
                    </div>
                    <a href="#"
                      class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
                      답변하러 가기
                      <svg class="ml-2 w-4 h-4" fill="currentColor" viewBox="0 0 20 20"
                        xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                          d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                          clip-rule="evenodd"></path>
                      </svg>
                    </a>
                  </div>
                </div>
              </article>
              <article
                class="p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
                <div class="container">
                  <div class="flex justify-between items-center mb-5 text-gray-500">
                    <span
                      class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                    </span>
                    <span class="text-sm">2023.07.09</span>
                  </div>
                  <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">우왕
                      2등이다앙~</h2>
                  <p class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">Static websites are now used to bootstrap
                    lots of websites and are becoming the basis for a variety of tools that even influence both web
                    designers and developers influence both web designers and developers.</p>
                  <div class="flex justify-between items-center">
                    <div class="flex items-center space-x-4">
                      <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="Bonnie Green avatar" />
                      <span class="font-medium dark:text-white">
                        민지 킴
                      </span>
                    </div>
                    <a href="#"
                      class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
                      답변하러 가기
                      <svg class="ml-2 w-4 h-4" fill="currentColor" viewBox="0 0 20 20"
                        xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                          d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                          clip-rule="evenodd"></path>
                      </svg>
                    </a>
                  </div>
                </div>
              </article>
              <article
                class="p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
                <div class="container">
                  <div class="flex justify-between items-center mb-5 text-gray-500">
                    <span
                      class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                    </span>
                    <span class="text-sm">2023.07.09</span>
                  </div>
                  <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">chatGPT
                      만만세~~</h2>
                  <p class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">Static websites are now used to bootstrap
                    lots of websites and are becoming the basis for a variety of tools that even influence both web
                    designers and developers influence both web designers and developers.</p>
                  <div class="flex justify-between items-center">
                    <div class="flex items-center space-x-4">
                      <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="Jese Leos avatar" />
                      <span class="font-medium dark:text-white">
                        다현 리
                      </span>
                    </div>
                    <a href="#"
                      class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
                      답변하러 가기
                      <svg class="ml-2 w-4 h-4" fill="currentColor" viewBox="0 0 20 20"
                        xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                          d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                          clip-rule="evenodd"></path>
                      </svg>
                    </a>
                  </div>
                </div>
              </article>
              <article
                class="p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
                <div class="container">
                  <div class="flex justify-between items-center mb-5 text-gray-500">
                    <span
                      class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                    </span>
                    <span class="text-sm">2023.07.09</span>
                  </div>
                  <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">chatGPT
                      만만세~~</h2>
                  <p class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">Static websites are now used to bootstrap
                    lots of websites and are becoming the basis for a variety of tools that even influence both web
                    designers and developers influence both web designers and developers.</p>
                  <div class="flex justify-between items-center">
                    <div class="flex items-center space-x-4">
                      <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="Jese Leos avatar" />
                      <span class="font-medium dark:text-white">
                        다현 리
                      </span>
                    </div>
                    <a href="#"
                      class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
                      답변하러 가기
                      <svg class="ml-2 w-4 h-4" fill="currentColor" viewBox="0 0 20 20"
                        xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                          d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
                          clip-rule="evenodd"></path>
                      </svg>
                    </a>
                  </div>
                </div>
              </article>
            </div>
          </div>
        </section>
      </div>
    </div>
  </main>

  <!-- 사람마다 profile 다르게 표시해야 함!! -->
  <!-- 사람이 달라질때마다 id를 다르게 해야하고 위에 게시글에 띄워질때 사람이 여러명인데 사람이 다르면 다른 id를 나타내야하고 그 id에 맞는 프로필이 떠야함ㅋㅎㅋㅎㅋㅎ -->
  <div data-popover id="popover-user-profile" role="tooltip"
    class="absolute z-10 invisible inline-block w-64 text-sm text-gray-500 transition-opacity duration-300 bg-white border border-gray-200 rounded-lg shadow-sm opacity-0 dark:text-gray-400 dark:bg-gray-800 dark:border-gray-600">
    <div class="p-3">
      <div class="flex items-center justify-between mb-2">
        <img class="w-10 h-10 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="">
        <div>
          <button type="button"
            class="text-white bg-lime-700 font-medium rounded-lg text-xs px-3 py-1.5 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">👍 Like</button>
        </div>
      </div>
      <p class="text-base font-semibold leading-none text-gray-900 dark:text-white">
        <a>현준 전</a>
      </p>
      <p class="mb-4 text-sm">
        한줄소개 ㄱㄱ?
      </p>
      <ul class="flex text-sm">
        <li class="mr-2">
          <a href="#" class="hover:underline">
            <span class="font-semibold text-gray-900 dark:text-white">799</span>
            <span>Like</span>
          </a>
        </li>
        <li>
          <a href="#" class="hover:underline">
            <span class="font-semibold text-gray-900 dark:text-white">35</span>
            <span>Post</span>
          </a>
        </li>
      </ul>
    </div>
    <div data-popper-arrow></div>
  </div>

  <footer class="p-4 bg-white md:p-8 lg:p-10 dark:bg-gray-800">
    <div class="mx-auto max-w-screen-xl text-center">
      <a class="flex justify-center items-center text-2xl font-semibold text-gray-900 dark:text-white">
        <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png" class="footer-logo">
      </a>
      <p class="my-6 text-gray-500 dark:text-gray-400">TUKOREA CP-CoP Dragon and Horse Coding knowledge sharing site
        with ChatGPT API</p>

      <ul class="flex flex-wrap justify-center items-center mb-6 text-gray-900 dark:text-white">
        <li>
          <a href="#" class="mr-4 hover:underline md:mr-6 ">About</a>
        </li>

        <li>
          <a href="#" class="mr-4 hover:underline md:mr-6 ">Email</a>
        </li>

        <li>
          <a href="https://www.tukorea.ac.kr/tukorea/index.do#none" class="mr-4 hover:underline md:mr-6 ">TUKOREA</a>
        </li>
      </ul>
      <span class="text-sm text-gray-500 sm:text-center dark:text-gray-400">© 2023 <a
          href="https://www.tukorea.ac.kr/tukorea/index.do#none" class="hover:underline">TUKOREA</a>. All Rights
        Reserved.</span>
    </div>
  </footer>
  <!-- <script src="Main.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>
</body>