<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
  import="com.example.coyongyong.controller.mypageController" %>	
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
  <!DOCTYPE html>
  <html lang="ko">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/problemList.css">
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
                class="flex mr-3 text-sm bg-gray-800 rounded-full md:mr-0 focus:ring-4 focus:ring-gray-300 dark:focus:ring-gray-600"
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
    <div class="bg-gray-50 flexflextop">
      <div class="flexcenter">
      <h1 class=" font-bold text-3xl pd50 text-center tx-center width">언어 선택</h1>
      <div
					class=" width40per text-center ProfileActivity_streak__AwMtA ProfileActivity_item__DqwKL flex tw-flex flex-row">
					<c:choose>
						<c:when test="${language eq 'c'}">
							<c:set var="languageNum" value="1" />

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/problem/list?language=c"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/letter-c.png"
									class="width70px">
									<div>C</div>
								</a>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/problem/list?language=java"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-java.png"
									class="width70px">
									<div>Java</div>
								</a>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/problem/list?language=python"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-python.png"
									class="width70px">
									<div>python</div>
								</a>
							</div>

							<%-- <div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-c-logo.png"
									class="width70px">
								<div>C++</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-js.png"
									class="width70px">
								<div>JavaScript</div>
							</div>

							<div class="tw-flex tw-flex-col">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-kotlin.png"
									class="width70px">
								<div>kotlin</div>
							</div> --%>
						</c:when>
						<c:when test="${language eq 'java'}">
							<c:set var="languageNum" value="3" />
							<div class="tw-flex tw-flex-col mgr30">
								<a href="/problem/list?language=c"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-letter-c.png"
									class="width70px">
									<div>C</div>
								</a>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/problem/list?language=java"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/java.png"
									class="width70px">
									<div>Java</div>
								</a>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/problem/list?language=python"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-python.png"
									class="width70px">
									<div>python</div>
								</a>
							</div>

							<%-- <div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-c-logo.png"
									class="width70px">
								<div>C++</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-js.png"
									class="width70px">
								<div>JavaScript</div>
							</div>

							<div class="tw-flex tw-flex-col">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-kotlin.png"
									class="width70px">
								<div>kotlin</div>
							</div> --%>
						</c:when>
						<c:when test="${language eq 'python'}">
							<c:set var="languageNum" value="2" />
							<div class="tw-flex tw-flex-col mgr30">
								<a href="/problem/list?language=c"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-letter-c.png"
									class="width70px">
									<div>C</div>
								</a>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/problem/list?language=java"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-java.png"
									class="width70px">
									<div>Java</div>
								</a>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/problem/list?language=python"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/python.png"
									class="width70px">
									<div>python</div>
								</a>
							</div>

							<%-- <div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-c-logo.png"
									class="width70px">
								<div>C++</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-js.png"
									class="width70px">
								<div>JavaScript</div>
							</div>

							<div class="tw-flex tw-flex-col">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-kotlin.png"
									class="width70px">
								<div>kotlin</div>
							</div> --%>
						</c:when>
					</c:choose>
					</div>
        <h2 class="mb-4 text-4xl tracking-tight font-bold text-gray-900 dark:text-white tx-center">레벨 1</h2>
        <div class="grid grid-cols-3 md:grid-cols-3 gap-6">
          <div>
            <div
              class="margin-20 max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <a href="/problem/play?num=${problems.get(0).problemNum}&language=${language}">
                <h5 class="mb-2 text-xl font-bold tracking-tight text-gray-900 dark:text-white">${problems.get(0).problemTitle}</h5>
              </a>
              <p class="targetget mb-3 font-normal text-gray-700 dark:text-gray-400">자리 배정해주는<br>피시방 알바생</p>
              <div class="text-right">
                <a href="/problem/play?num=${problems.get(0).problemNum}&language=${language}"
                  class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                  GO
                  <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                    viewBox="0 0 14 10">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M1 5h12m0 0L9 1m4 4L9 9" />
                  </svg>
                </a>
              </div>
            </div>
          </div>
          <div>
            <div
              class="margin-20 max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <a href="/problem/play?num=${problems.get(1).problemNum}&language=${language}">
                <h5 class="mb-2 text-xl font-bold tracking-tight text-gray-900 dark:text-white">${problems.get(1).problemTitle}</h5>
              </a>
              <p class="targetget mb-3 font-normal text-gray-700 dark:text-gray-400">반짝 반짝 작은별.<br>아름답게 빛나네</p>
              <div class="text-right">
                <a href="/problem/play?num=${problems.get(0).problemNum}&language=${language}"
                  class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                  GO
                  <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                    viewBox="0 0 14 10">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M1 5h12m0 0L9 1m4 4L9 9" />
                  </svg>
                </a>
              </div>
            </div>
          </div>
          <div>
            <div
              class="margin-20 max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <a href="/problem/play?num=${problems.get(2).problemNum}&language=${language}">
                <h5 class="mb-2 text-xl font-bold tracking-tight text-gray-900 dark:text-white">${problems.get(2).problemTitle}</h5>
              </a>
              <p class="targetget mb-3 font-normal text-gray-700 dark:text-gray-400">덧셈을 해서 제자리로<br>돌아오는 수를 찾아보아요</p>
              <div class="text-right">
                <a href="/problem/play?num=${problems.get(2).problemNum}&language=${language}"
                  class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                  GO
                  <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                    viewBox="0 0 14 10">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M1 5h12m0 0L9 1m4 4L9 9" />
                  </svg>
                </a>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-blue-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-blue-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-blue-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
        </div>

        <h2 class="mgg-3 mb-4 text-4xl tracking-tight font-bold text-gray-900 dark:text-white tx-center">레벨 2</h2>
        <div class="grid grid-cols-3 md:grid-cols-3 gap-6">
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="button_color_disabled text-white bg-blue-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="button_color_disabled text-white bg-blue-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="button_color_disabled text-white bg-blue-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="button_color_disabled text-white bg-blue-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="button_color_disabled text-white bg-blue-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="button_color_disabled text-white bg-blue-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
        </div>

        <h2 class="mgg-3 mb-4 text-4xl tracking-tight font-bold text-gray-900 dark:text-white tx-center">레벨 3</h2>
        <div class="grid grid-cols-3 md:grid-cols-3 gap-6">
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-purple-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-purple-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-purple-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-purple-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-purple-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-purple-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
        </div>

        <h2 class="mgg-3 mb-4 text-4xl tracking-tight font-bold text-gray-900 dark:text-white tx-center">레벨 4</h2>
        <div class="grid grid-cols-3 md:grid-cols-3 gap-6">
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-pink-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-pink-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-pink-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-pink-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-pink-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
          <div>
            <div
              class="bg-white margin-20 max-w-sm p-6 border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
              <div role="status" class="max-w-sm animate-pulse">
                <div class="h-2.5 bg-gray-200 rounded-full dark:bg-gray-700 w-48 mb-4"></div>
                <div class="h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[330px] mb-2.5"></div>
                <div class="mg-3 h-2 bg-gray-200 rounded-full dark:bg-gray-700 max-w-[360px]"></div>
                <span class="sr-only">Loading...</span>
              </div>
              <div class="text-right">
                <button type="button"
                  class="text-white bg-pink-400 dark:bg-blue-500 cursor-not-allowed font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  disabled>레벨 미달성</button>
              </div>
            </div>
          </div>
        </div>


      </div>




    </div>
    </div>
    <footer class="p-4 bg-white md:p-8 lg:p-10 dark:bg-gray-800">
      <div class="mx-auto max-w-screen-xl text-center">
        <a href="#" class="flex justify-center items-center text-2xl font-semibold text-gray-900 dark:text-white">
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