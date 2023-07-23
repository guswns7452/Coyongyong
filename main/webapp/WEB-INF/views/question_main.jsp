<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.example.coyongyong.controller.mypageController"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<!--=============== CSS ===============-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/question_main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/Main.css">
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

<div class="tw-col-span-8 tw-py-8 bg-gray-50">
	<div class="text-center font_size30 tw-font-bold">오늘의 질문</div>
	<div
		class="tw-flex tw-flex-col tw-divide-solid tw-divide-x-0 tw-divide-y tw-divide-slate-200">
		<div class="flex_col jus-center">
			<div class="flex_mode">
				<div
					class="pd50 text-center ProfileActivity_streak__AwMtA ProfileActivity_item__DqwKL tw-flex flex-row">
					<c:choose>
						<c:when test="${language eq 'c'}">
							<c:set var="languageNum" value="1" />

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/question/questionmain?language=c"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/letter-c.png"
									class="width70px">
									<div>C</div>
								</a>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/question/questionmain?language=java"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-java.png"
									class="width70px">
									<div>Java</div>
								</a>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/question/questionmain?language=python"> <img
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
								<a href="/question/questionmain?language=c"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-letter-c.png"
									class="width70px">
									<div>C</div>
								</a>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/question/questionmain?language=java"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/java.png"
									class="width70px">
									<div>Java</div>
								</a>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/question/questionmain?language=python"> <img
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
								<a href="/question/questionmain?language=c"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-letter-c.png"
									class="width70px">
									<div>C</div>
								</a>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/question/questionmain?language=java"> <img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-java.png"
									class="width70px">
									<div>Java</div>
								</a>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<a href="/question/questionmain?language=python"> <img
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
						<%-- <c:when test="${language eq 'cplus'}">
							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-letter-c.png"
									class="width70px">
								<div>C</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-java.png"
									class="width70px">
								<div>Java</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-python.png"
									class="width70px">
								<div>python</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/c-logo.png"
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
							</div>
						</c:when>
						<c:when test="${language eq 'javascript'}">
							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-letter-c.png"
									class="width70px">
								<div>C</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-java.png"
									class="width70px">
								<div>Java</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-python.png"
									class="width70px">
								<div>python</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-c-logo.png"
									class="width70px">
								<div>C++</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/js.png"
									class="width70px">
								<div>JavaScript</div>
							</div>

							<div class="tw-flex tw-flex-col">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-kotlin.png"
									class="width70px">
								<div>kotlin</div>
							</div>
						</c:when>
						<c:when test="${language eq 'kotlin'}"> --%>
							<%-- <div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-letter-c.png"
									class="width70px">
								<div>C</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-java.png"
									class="width70px">
								<div>Java</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/gray-python.png"
									class="width70px">
								<div>python</div>
							</div>

							<div class="tw-flex tw-flex-col mgr30">
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
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/kotlin.png"
									class="width70px">
								<div>kotlin</div>
							</div>
						</c:when> --%>
					</c:choose>
				</div>
				<c:forEach var="a" varStatus="k" begin="1" end="4">
					<div
						class="pd50 ProfileActivity_streak__AwMtA ProfileActivity_item__DqwKL">
						<div class="font_size25 tw-font-bold">레벨 ${k.current}</div>
						<button type="button" class="text-white bg-gradient-to-br from-green-400 to-blue-600 hover:bg-gradient-to-bl focus:ring-4 focus:outline-none focus:ring-green-200 dark:focus:ring-green-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2" style="height:40px;">질문 더보기</button>
						<div class="wrapper">
							<!-- <i id="left" class="fa-solid fa-angle-left"> <svg
									style="width: 18px; margin-top: 7px; margin-left: 15px;"
									className="w-[43px] h-[43px] text-gray-800 dark:text-white"
									aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
									fill="none" viewBox="0 0 8 14">
                                    <path stroke="currentColor"
										strokeLinecap="round" strokeLinejoin="round" strokeWidth="2"
										d="M7 1 1.3 6.326a.91.91 0 0 0 0 1.348L7 13" />
                                </svg>
							</i> -->
							<ul class="carousel">
								<c:set var="loop_flag" value="true" />
								<c:forEach items="${questions}" var="question" varStatus="i"
									begin="${(languageNum-1)*12 + (k.current-1)*3}"
									end="${(languageNum-1)*12 + (k.current-1)*3 + 2}">
									<c:if test="${loop_flag}">
										<c:if test="${empty question}">
											<c:set var="loop_flag" value="false" />
										</c:if>
										<c:if test="${not empty question}">
											<li class="card">
												<article
													class="item p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
													<div
														class="flex justify-between items-center mb-5 text-gray-500">
														<span
															class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
														</span>
														<div class="img_date">
															<c:choose>
																<c:when test="${i.index % 3 eq 0}">
																	<img
																		src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_first.png"
																		width="10%" height="10%">
																	<span class="text-sm">${question.questionDate}</span>
																</c:when>
																<c:when test="${i.index % 3 eq 1}">
																	<img
																		src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_second.png"
																		width="10%" height="10%">
																	<span class="text-sm">${question.questionDate}</span>
																</c:when>
																<c:when test="${i.index % 3 eq 2}">
																	<img
																		src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_third.png"
																		width="10%" height="10%">
																	<span class="text-sm">${question.questionDate}</span>
																</c:when>
															</c:choose>
														</div>
													</div>
													<h2
														class="h-70 mb-2 text-xl font-bold tracking-tight text-gray-900 dark:text-white">
														${question.questionTitle} ${i.index}</h2>
													<p
														class="h-110 mb-5 font-light text-gray-500 dark:text-gray-400">${question.questionContent}
													</p>
													<div class="flex justify-between items-center">
														<div class="flex items-center space-x-4">
															<img class="w-7 h-7 rounded-full"
																src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png"
																alt="Jese Leos avatar" /> <span
																class="font-medium dark:text-white">
																${question.customerID} </span>
														</div>
														<!-- TODO : 질문마다 뽑아오는거 -->
														<a
															href="/question/onequestion?num=${question.questionNum}"
															class="inline-flex items-center font-medium text-primary-600 dark:text-primary-500 hover:underline">
															Read more <svg class="ml-2 w-4 h-4" fill="currentColor"
																viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
				                                                    <path
																	fill-rule="evenodd"
																	d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
																	clip-rule="evenodd"></path>
				                                                </svg>
														</a>
													</div>
												</article>
											</li>
										</c:if>
									</c:if>
								</c:forEach>

							</ul>
							<!-- <i id="right" class="fa-solid fa-angle-right"> <svg
									style="width: 20px; margin-top: 7px; margin-left: 17px;"
									className="w-[43px] h-[43px] text-gray-800 dark:text-white"
									aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
									fill="none" viewBox="0 0 8 14">
                                    <path stroke="currentColor"
										strokeLinecap="round" strokeLinejoin="round" strokeWidth="2"
										d="m1 13 5.7-5.326a.909.909 0 0 0 0-1.348L1 1" />
                                </svg>
							</i> -->
						</div>
						<div class="temptemp">
							<a href="/question/writequestion"><button type="button"
								class="text-gray-900 bg-gradient-to-r from-teal-200 to-lime-200 hover:bg-gradient-to-l hover:from-teal-200 hover:to-lime-200 focus:ring-4 focus:outline-none focus:ring-lime-200 dark:focus:ring-teal-700 font-medium rounded-lg text-sm px-5 py-2.5 text-center mr-2 mb-2">질문
								하러 가기</button></a>
						</div>
					</div>
				</c:forEach>

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
									class="font-semibold text-gray-900 dark:text-white">799</span>
									<span>Like</span>
							</a></li>
							<li><a href="#" class="hover:underline"> <span
									class="font-semibold text-gray-900 dark:text-white">35</span> <span>Post</span>
							</a></li>
						</ul>
					</div>
					<div data-popper-arrow></div>
				</div>
			</div>
		</div>
	</div>
</div>

<footer class="p-4 bg-white md:p-8 lg:p-10 dark:bg-gray-800">
	<div class="mx-auto max-w-screen-xl text-center">
		<a href="#"
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

<!--=============== MAIN JS ===============-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
<script
	src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/question_main.js"></script>
</body>

</html>