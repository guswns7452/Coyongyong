<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">

<!--=============== CSS ===============-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/default.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.js"></script>

<link rel="icon"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png" />
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png" />
<title>CoyongYong</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/Main.css">

<!-- banner 폰트 적용 -->
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Hi+Melody&family=Nanum+Gothic:wght@800&display=swap"
	rel="stylesheet">

</head>

<body>
	<main class="bg-blue-10">
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
							xmlns="http://www.w3.org/2000/svg" fill="none"
							viewBox="0 0 17 14">
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
							class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500"
							aria-current="page">Home</a></li>
						<li><a href="/question/questionmain?language=c"
							class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">질문</a>
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

		<!-- 배너 -->
		<div class="banner">
			<h1>C O Y O N G Y O N G</h1>
			<p>코딩의 질문과 답을 묻다.</p>
		</div>
		<div class="top bg-green-10">
			<div class="toptop">
				<section class="dark:bg-gray-900">
					<div class="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
						<div class="mx-auto max-w-screen-sm text-center lg:mb-16 mb-8">
							<h2
								class="mb-4 text-3xl lg:text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white">오늘의
								질문 TOP3</h2>
						</div>
						<div class="flex gap-8">
							<article
								class="flex flex-col tempflex minWidth p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
								<div
									class="flex justify-between items-center mb-5 text-gray-500">
									<span
										class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
									</span>
									<div class="img_date">
										<img
											src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_first.png"
											width="10%" height="10%"> <span class="text-sm">${TodaysQuesiton.get(0).questionDate}</span>
									</div>
								</div>
								<h2
									class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">${TodaysQuesiton.get(0).questionTitle}</h2>
								<p class="mb-5 font-light text-gray-500 dark:text-gray-400">${TodaysQuesiton.get(0).questionContent}</p>
								<div class="flex justify-between items-center">
									<div class="flex items-center space-x-4">
										<img class="w-7 h-7 rounded-full"
											src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongsun_makeup.png"
											alt="Jese Leos avatar" /> <span
											class="font-medium dark:text-white">
											${TodaysQuesiton.get(0).customerID} </span>
									</div>
									<a
										href="/question/onequestion?num=${TodaysQuesiton.get(0).questionNum}"
										class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
										Read more <svg class="ml-2 w-4 h-4" fill="currentColor"
											viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                          <path fill-rule="evenodd"
												d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
												clip-rule="evenodd"></path>
                        </svg>
									</a>
								</div>
							</article>
							<article
								class="flex flex-col tempflex minWidth p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
								<div
									class="flex justify-between items-center mb-5 text-gray-500">
									<span
										class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
									</span>
									<div class="img_date">
										<img
											src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_second.png"
											width="10%" height="10%"> <span class="text-sm">${TodaysQuesiton.get(1).questionDate}</span>
									</div>
								</div>
								<h2
									class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">${TodaysQuesiton.get(1).questionTitle}</h2>
								<p class="mb-5 font-light text-gray-500 dark:text-gray-400">${TodaysQuesiton.get(1).questionContent}</p>
								<div class="flex justify-between items-center">
									<div class="flex items-center space-x-4">
										<img class="w-7 h-7 rounded-full"
											src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/nicon.png"
											alt="Jese Leos avatar" /> <span
											class="font-medium dark:text-white">
											${TodaysQuesiton.get(1).customerID} </span>
									</div>
									<a
										href="/question/onequestion?num=${TodaysQuesiton.get(1).questionNum}"
										class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
										Read more <svg class="ml-2 w-4 h-4" fill="currentColor"
											viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                          <path fill-rule="evenodd"
												d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
												clip-rule="evenodd"></path>
                        </svg>
									</a>
								</div>
							</article>
							<article
								class="flex flex-col tempflex minWidth p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
								<div
									class="flex justify-between items-center mb-5 text-gray-500">
									<span
										class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
									</span>
									<div class="img_date">
										<img
											src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_third.png"
											width="10%" height="10%"> <span class="text-sm">${TodaysQuesiton.get(2).questionDate}</span>
									</div>
								</div>
								<h2
									class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">${TodaysQuesiton.get(2).questionTitle}</h2>
								<p class="mb-5 font-light text-gray-500 dark:text-gray-400">${TodaysQuesiton.get(2).questionContent}</p>
								<div class="flex justify-between items-center">
									<div class="flex items-center space-x-4">
										<img class="w-7 h-7 rounded-full"
											src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/water_nicon.png"
											alt="Jese Leos avatar" /> <span
											class="font-medium dark:text-white">
											${TodaysQuesiton.get(2).customerID} </span>
									</div>
									<a
										href="/question/onequestion?num=${TodaysQuesiton.get(2).questionNum}"
										class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
										Read more <svg class="ml-2 w-4 h-4" fill="currentColor"
											viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
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

				<!-- 로그인 X일때 -->
				<section class="dark:bg-gray-900">
					<div class="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
						<div class="mx-auto max-w-screen-sm text-center lg:mb-16 mb-8">
							<h2
								class="mb-4 text-3xl lg:text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white">가장
								최근에 올라온 질문</h2>
						</div>
						<div class="Grid grid-cols-4 gap-8">
							<article
								class="justify-around flex flex-col p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
								<div class="container">
									<div
										class="flex justify-between items-center mb-5 text-gray-500">
										<span
											class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
										</span> <span class="text-sm">${questions.get(0).questionDate}</span>
									</div>
									<h2
										class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">
										${questions.get(0).questionTitle}</h2>
									<p
										class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">${questions.get(0).questionContent}</p>
									<div class="flex justify-between items-center">
										<div class="flex items-center space-x-4">
											<img class="w-7 h-7 rounded-full"
												src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/water_yongyong.png"
												alt="Jese Leos avatar" /> <span
												class="font-medium dark:text-white">
												${questions.get(0).customerID} </span>
										</div>
										<a
											href="/question/onequestion?num=${questions.get(0).questionNum}"
											class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
											Read More <svg class="ml-2 w-4 h-4" fill="currentColor"
												viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
													d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
													clip-rule="evenodd"></path>
                          </svg>
										</a>
									</div>
								</div>
							</article>
							<article
								class="justify-around flex flex-col p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
								<div class="container">
									<div
										class="flex justify-between items-center mb-5 text-gray-500">
										<span
											class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
										</span> <span class="text-sm">${questions.get(1).questionDate}</span>
									</div>
									<h2
										class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">
										${questions.get(1).questionTitle}</h2>
									<p
										class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">${questions.get(1).questionContent}</p>
									<div class="flex justify-between items-center">
										<div class="flex items-center space-x-4">
											<img class="w-7 h-7 rounded-full"
												src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongsun.png"
												alt="Jese Leos avatar" /> <span
												class="font-medium dark:text-white">
												${questions.get(1).customerID} </span>
										</div>
										<a
											href="/question/onequestion?num=${questions.get(1).questionNum}"
											class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
											Read More <svg class="ml-2 w-4 h-4" fill="currentColor"
												viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
													d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
													clip-rule="evenodd"></path>
                          </svg>
										</a>
									</div>
								</div>
							</article>
							<article
								class="justify-around flex flex-col p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
								<div class="container">
									<div
										class="flex justify-between items-center mb-5 text-gray-500">
										<span
											class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
										</span> <span class="text-sm">${questions.get(2).questionDate}</span>
									</div>
									<h2
										class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">
										${questions.get(2).questionTitle}</h2>
									<p
										class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">${questions.get(2).questionContent}</p>
									<div class="flex justify-between items-center">
										<div class="flex items-center space-x-4">
											<img class="w-7 h-7 rounded-full"
												src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png"
												alt="Jese Leos avatar" /> <span
												class="font-medium dark:text-white">
												${questions.get(2).customerID} </span>
										</div>
										<a
											href="/question/onequestion?num=${questions.get(2).questionNum}"
											class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
											Read More <svg class="ml-2 w-4 h-4" fill="currentColor"
												viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
													d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
													clip-rule="evenodd"></path>
                          </svg>
										</a>
									</div>
								</div>
							</article>
							<article
								class="justify-around flex flex-col p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
								<div class="container">
									<div
										class="flex justify-between items-center mb-5 text-gray-500">
										<span
											class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
										</span> <span class="text-sm">${questions.get(3).questionDate}</span>
									</div>
									<h2
										class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">
										${questions.get(3).questionTitle}</h2>
									<p
										class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">${questions.get(3).questionContent}</p>
									<div class="flex justify-between items-center">
										<div class="flex items-center space-x-4">
											<img class="w-7 h-7 rounded-full"
												src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/nicon.png"
												alt="Jese Leos avatar" /> <span
												class="font-medium dark:text-white">
												${questions.get(3).customerID} </span>
										</div>
										<a
											href="/question/onequestion?num=${questions.get(3).questionNum}"
											class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
											Read More <svg class="ml-2 w-4 h-4" fill="currentColor"
												viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
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

				<!-- 로그인 되어있을 때 -->
				<section class="dark:bg-gray-900">
					<div class="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
						<div class="mx-auto max-w-screen-sm text-center lg:mb-16 mb-8">
							<h2
								class="mb-4 text-3xl lg:text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white">관련있는
								질문</h2>
						</div>
						<div class="grid-cols-4 gap-8">
							<article
								class="justify-around flex flex-col p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
								<div class="container">
									<div
										class="flex justify-between items-center mb-5 text-gray-500">
										<span
											class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
										</span> <span class="text-sm">${questionTemp.get(0).questionDate}</span>
									</div>
									<h2
										class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">
										${questionTemp.get(0).questionTitle}</h2>
									<div
										class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">${questionTemp.get(0).questionContent}</div>
									<div class="flex justify-between items-center">
										<div class="flex items-center space-x-4">
											<button>
												<img data-popover-target="popover-user-profile"
													class="w-7 h-7 rounded-full profile"
													src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong_nicon.png"
													alt="Jese Leos avatar" />
											</button>
										</div>
										<span class="font-medium dark:text-white">
											${questionTemp.get(0).customerID} </span> <a
											href="/question/onequestion?num=${questionTemp.get(0).questionNum}"
											class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
											Read More <svg class="ml-2 w-4 h-4" fill="currentColor"
												viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
													d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
													clip-rule="evenodd"></path>
                          </svg>
										</a>
									</div>
								</div>
							</article>
							<article
								class="justify-around flex flex-col p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
								<div class="container">
									<div
										class="flex justify-between items-center mb-5 text-gray-500">
										<span
											class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
										</span> <span class="text-sm">${questionTemp.get(1).questionDate}</span>
									</div>
									<h2
										class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">
										${questionTemp.get(1).questionTitle}</h2>
									<div
										class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">${questionTemp.get(1).questionContent}</div>
									<div class="flex justify-between items-center">
										<div class="flex items-center space-x-4">
											<button>
												<img data-popover-target="popover-user-profile"
													class="w-7 h-7 rounded-full profile"
													src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/uni.png"
													alt="Jese Leos avatar" />
											</button>
										</div>
										<span class="font-medium dark:text-white">
											${questionTemp.get(1).customerID} </span> <a
											href="/question/onequestion?num=${questionTemp.get(1).questionNum}"
											class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
											Read More <svg class="ml-2 w-4 h-4" fill="currentColor"
												viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
													d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
													clip-rule="evenodd"></path>
                          </svg>
										</a>
									</div>
								</div>
							</article>
							<article
								class="justify-around flex flex-col p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
								<div class="container">
									<div
										class="flex justify-between items-center mb-5 text-gray-500">
										<span
											class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
										</span> <span class="text-sm">${questionTemp.get(2).questionDate}</span>
									</div>
									<h2
										class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">
										${questionTemp.get(2).questionTitle}</h2>
									<div
										class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">${questionTemp.get(2).questionContent}</div>
									<div class="flex justify-between items-center">
										<div class="flex items-center space-x-4">
											<button>
												<img data-popover-target="popover-user-profile"
													class="w-7 h-7 rounded-full profile"
													src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/water_yongyong.png"
													alt="Jese Leos avatar" />
											</button>
										</div>
										<span class="font-medium dark:text-white">
											${questionTemp.get(2).customerID} </span> <a
											href="/question/onequestion?num=${questionTemp.get(2).questionNum}"
											class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
											Read More <svg class="ml-2 w-4 h-4" fill="currentColor"
												viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
													d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
													clip-rule="evenodd"></path>
                          </svg>
										</a>
									</div>
								</div>
							</article>
							<article
								class="justify-around flex flex-col p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
								<div class="container">
									<div
										class="flex justify-between items-center mb-5 text-gray-500">
										<span
											class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
										</span> <span class="text-sm">${questionTemp.get(3).questionDate}</span>
									</div>
									<h2
										class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white question_title">
										${questionTemp.get(3).questionTitle}</h2>
									<div
										class="mb-5 font-light text-gray-500 dark:text-gray-400 question_content">${questionTemp.get(3).questionContent}</div>
									<div class="flex justify-between items-center">
										<div class="flex items-center space-x-4">
											<button>
												<img data-popover-target="popover-user-profile"
													class="w-7 h-7 rounded-full profile"
													src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongsun_makeup.png"
													alt="Jese Leos avatar" />
											</button>
										</div>
										<span class="font-medium dark:text-white">
											${questionTemp.get(3).customerID} </span> <a
											href="/question/onequestion?num=${questionTemp.get(3).questionNum}"
											class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
											Read More <svg class="ml-2 w-4 h-4" fill="currentColor"
												viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
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
				<img class="w-10 h-10 rounded-full"
					src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png"
					alt="">
				<div>
					<button type="button"
						class="text-white bg-lime-700 font-medium rounded-lg text-xs px-3 py-1.5 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">👍
						Like</button>
				</div>
			</div>
			<p
				class="text-base font-semibold leading-none text-gray-900 dark:text-white">
				<a>현준 전</a>
			</p>
			<p class="mb-4 text-sm">한줄소개 ㄱㄱ?</p>
			<ul class="flex text-sm">
				<li class="mr-2"><a href="#" class="hover:underline"> <span
						class="font-semibold text-gray-900 dark:text-white">799</span> <span>Like</span>
				</a></li>
				<li><a href="#" class="hover:underline"> <span
						class="font-semibold text-gray-900 dark:text-white">35</span> <span>Post</span>
				</a></li>
			</ul>
		</div>
		<div data-popper-arrow></div>


	</div>

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
	<!-- <script src="Main.js"></script> -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>
</body>

</html>