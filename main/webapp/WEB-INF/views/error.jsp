<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<!--=============== CSS ===============-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/login.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.css"
	rel="stylesheet" />
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png" />
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png" />
<title>CoyongYong</title>
</head>

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
<div class="bg-green-10 pd-b200 flex_mode ">
	<section class="bg-green-10 dark:bg-gray-900">
		<div class="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
			<div class="mx-auto max-w-screen-sm text-center">
				<img class="center"
					src="https://flowbite.s3.amazonaws.com/blocks/marketing-ui/404/404-computer.svg"
					alt="404 Not Found">
				<h1
					class="mb-4 text-7xl tracking-tight font-extrabold lg:text-9xl text-primary-600 dark:text-primary-500">404</h1>
				<p
					class="mb-4 text-3xl tracking-tight font-bold text-gray-900 md:text-4xl dark:text-white">Something's
					missing.</p>
				<p class="mb-4 text-lg font-light text-gray-500 dark:text-gray-400">Sorry,
					we can't find that page. You'll find lots to explore on the home
					page.</p>
				<a href="/"
					class="inline-flex text-white bg-purple-600 hover:bg-purple-600 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:focus:ring-primary-900 my-4">Back
					to Homepage</a>
			</div>
		</div>
	</section>
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
<!--=============== MAIN JS ===============-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>
</body>

</html>