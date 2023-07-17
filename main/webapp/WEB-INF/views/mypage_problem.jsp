<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.example.coyongyong.controller.mypageController"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/mypage.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/charts.css/dist/charts.min.css">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png"/>
	<title>CoyongYong</title>
</head>

<body>
    <div class="antialiased bg-gray-50 dark:bg-gray-900">
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
                  <a href="/question/questionmain?language=c"
                    class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">질문</a>
                </li>
                <li>
                  <a href="/study/list"
                    class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">공부일지</a>
                </li>
                <li>
                  <a href="/problem/list"
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

        <div class="flex_mode">
            <div class="mypage__flex">
                <div
                    class="mymy w-full max-w-sm bg-white border border-gray-200 shadow dark:bg-gray-800 dark:border-gray-700 ProfileActivity_item__DqwKL">
                    <div class="flex justify-end px-4 pt-10"> </div>
                    <div class="flex flex-col items-center pb-10">
                        <img class="w-24 h-24 mb-3 rounded-full shadow-lg" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/${customer.customerImage}"
                            alt="Bonnie image" />
                        <h5 class="mb-1 text-xl font-medium text-gray-900 dark:text-white">${customer.customerNickname}</h5>
                        <h6 class="text-mi text-gray-500 dark:text-gray-400">${customer.name}</h6>
                        <h6 class="text-sm text-gray-600 dark:text-gray-400">${customer.customerIntro}</h6>
                        <div class="flex mt-4 space-x-3 md:mt-6">
                            <button data-modal-target="authentication-modal" data-modal-toggle="authentication-modal"
                                type="button"
                                class="focus:outline-none text-white button_color focus:ring-4 focus:ring-green-200 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 ">비밀번호
                                변경</button>
                        </div>
                        <div class="flex mt-4 space-x-3 md:mt-6">
                            <button type="button"
                                class="focus:outline-none text-white button_color focus:ring-4 focus:ring-green-200 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:focus:ring-yellow-900">회원정보
                                확인</button>
                        </div>
                    </div>
                </div>

                <!-- Main modal -->
                <div id="authentication-modal" tabindex="-1" aria-hidden="true"
                    class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full">
                    <div class="relative w-full max-w-md max-h-full">
                        <!-- Modal content -->
                        <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                            <button type="button"
                                class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ml-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                                data-modal-hide="authentication-modal">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                    viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                            <div class="px-6 py-6 lg:px-8">
                                <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">비밀번호 변경</h3>
                                <form class="space-y-6" action="#">
                                    <div>
                                        <label for="password"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
                                            현재 비밀번호</label>
                                        <input type="password" name="password" id="password" placeholder="••••••••"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                            required>
                                    </div>
                                    <div>
                                        <label for="password"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">변경
                                            비밀번호</label>
                                        <input type="password" name="password" id="password" placeholder="••••••••"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                            required>
                                    </div>
                                    <div>
                                        <label for="password"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">비밀번호
                                            확인</label>
                                        <input type="password" name="password" id="password" placeholder="••••••••"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                                            required>
                                    </div>

                                    <button type="submit" data-modal-hide="authentication-modal"
                                        onclick="handleModalCloseButtonClick()"
                                        class="modalClose w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">비밀번호
                                        변경하기</button>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="toptoptop">
                    <div
                        class="margin-bottom text-sm font-medium text-center text-gray-500 border-b border-gray-200 dark:text-gray-400 dark:border-gray-700">
                        <ul class="flex flex-wrap -mb-px">
                            <li class="mr-2">
                                <a href="/mypage/dashboard"
                                    class="inline-block p-4 text-blue-600 border-b-2 border-blue-600 rounded-t-lg active dark:text-blue-500 dark:border-blue-500 font-semibold" aria-current="page">대시보드</a>
                            </li>
                            <li class="mr-2">
                                <a href="/mypage/question"
                                    class="inline-block p-4 border-b-2 border-transparent rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300"
                                    >질문</a>
                            </li>
                            <li class="mr-2">
                                <a href="/mypage/study"
                                    class="inline-block p-4 border-b-2 border-transparent rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300">공부일지</a>
                            </li>
                            <li class="mr-2">
                                <a href="/mypage/problem"
                                    class="inline-block p-4 border-b-2 border-transparent rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300">레벨</a>
                            </li>
                            <!-- <li>
                                <a
                                    class="inline-block p-4 text-gray-400 rounded-t-lg cursor-not-allowed dark:text-gray-500">Disabled</a>
                            </li> -->
                        </ul>
                    </div>

                    <div class="ProfileActivity_streak__AwMtA ProfileActivity_item__DqwKL">

                        <div class="largerFont">나의 레벨</div>

                        <div class="grid grid-cols-3 md:grid-cols-3 gap-6">
                            <div>
                                <div
                                    class="p-6 flex flex-col align-center max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                                    <div style="background-image: url('${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/apple-tree.png');" class="profile-user-img"> </div>
                                    <a href="#">
                                        <h5
                                            class="mt-3 mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                            C</h5>
                                    </a>
                                    <p class="mb-3 font-normal text-gray-700 dark:text-gray-400 font-semibold">level 4</p>
                                    <div class="DetailBadge_userCount__ZoF9Q">레벨을 모두 달성했습니다! 🎉축하합니다!🎉</div>
                                </div>
                            </div>
                            <div>
                                <div
                                    class="bg-gray-50 p-6 flex flex-col align-center max-w-sm border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                                    <div style="background-image: url('${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/locked.png');" class="bg-white profile-user-img"> </div>
                                    <a href="#">
                                        <h5
                                            class="mt-3 mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                            Java</h5>
                                    </a>
                                    <p class="mb-3 font-normal text-gray-700 dark:text-gray-400 font-semibold">level 0</p>
                                    <div class="DetailBadge_userCount__ZoF9Q">문제를 풀어보고 <br> 레벨을 열어보세요!</div>
                                </div>
                            </div>
                            <div>
                                <div
                                    class="p-6 flex flex-col align-center max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                                    <div style="background-image: url('${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/green-tea.png');" class="profile-user-img"></div>
                                    <a href="#">
                                        <h5
                                            class="mt-3 mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                            Python</h5>
                                    </a>
                                    <p class="mb-3 font-normal text-gray-700 dark:text-gray-400 font-semibold">level 2</p>
                                    <div class="DetailBadge_userCount__ZoF9Q">레벨 2 달성! <br> 영차영차</div>
                                </div>
                            </div>
                            <div>
                                <div
                                    class="bg-gray-50 p-6 flex flex-col align-center max-w-sm border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                                    <div style="background-image: url('${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/locked.png');" class="bg-white profile-user-img"> </div>
                                    <a href="#">
                                        <h5
                                            class="mt-3 mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                            JavaScript</h5>
                                    </a>
                                    <p class="mb-3 font-normal text-gray-700 dark:text-gray-400 font-semibold">level 0</p>
                                    <div class="DetailBadge_userCount__ZoF9Q">문제를 풀어보고 <br> 레벨을 열어보세요!</div>
                                </div>
                            </div>
                            <div>
                                <div
                                    class="p-6 flex flex-col align-center max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                                    <div style="background-image: url('${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/seed.png');" class="profile-user-img"></div>
                                    <a href="#">
                                        <h5
                                            class="mt-3 mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                            C++</h5>
                                    </a>
                                    <p class="mb-3 font-normal text-gray-700 dark:text-gray-400 font-semibold">level 1</p>
                                    <div class="DetailBadge_userCount__ZoF9Q">새싹 같은 단계지만 <br> 차근차근 준비해보아요~</div>
                                </div>
                            </div>
                            <div>
                                <div
                                    class="bg-white p-6 flex flex-col align-center max-w-sm border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
                                    <div style="background-image: url('${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/plant-pot.png');" class="bg-white profile-user-img"> </div>
                                    <a href="#">
                                        <h5
                                            class="mt-3 mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                                            Kotlin</h5>
                                    </a>
                                    <p class="DetailBadge_userCount__ZoF9Q mb-3 font-normal text-gray-700 dark:text-gray-400 font-semibold">level 3</p>
                                    <!-- <div class="DetailBadge_userCount__ZoF9Q">레벨 3! <br> 거의 다 왔습니다!</div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div id="popup-modal" tabindex="-1"
                    class="fixed top-0 left-0 right-0 z-50 hidden p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full">
                    <div class="relative w-full max-w-md max-h-full">
                        <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                            <button type="button"
                                class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ml-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                                data-modal-hide="popup-modal">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                    viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                            <div class="p-6 text-center">
                                <svg class="mx-auto mb-4 text-gray-400 w-12 h-12 dark:text-gray-200" aria-hidden="true"
                                    xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2" d="M10 11V6m0 8h.01M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                                </svg>
                                <h3 class="mb-5 text-lg font-normal text-gray-500 dark:text-gray-400">Are you sure
                                    you want to delete this product?</h3>
                                <button data-modal-hide="popup-modal" type="button"
                                    class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center mr-2">
                                    Yes, I'm sure
                                </button>
                                <button data-modal-hide="popup-modal" type="button"
                                    class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 dark:bg-gray-700 dark:text-gray-300 dark:border-gray-500 dark:hover:text-white dark:hover:bg-gray-600 dark:focus:ring-gray-600">No,
                                    cancel</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- " role="alert" -->

                <div id="toast-interactive"
                    class="fixed bottom-5 right-5 w-full max-w-xs p-4 text-gray-500 bg-white rounded-lg shadow dark:bg-gray-800 dark:text-gray-400 transition-opacity duration-300 ease-out opacity-0 hidden">
                    <div class="flex">
                        <div
                            class="inline-flex items-center justify-center flex-shrink-0 w-8 h-8 text-blue-500 bg-blue-100 rounded-lg dark:text-blue-300 dark:bg-blue-900">
                            <svg class="w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 18 20">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M16 1v5h-5M2 19v-5h5m10-4a8 8 0 0 1-14.947 3.97M1 10a8 8 0 0 1 14.947-3.97" />
                            </svg>
                            <span class="sr-only">Refresh icon</span>
                        </div>
                        <div class="ml-3 text-sm font-normal">
                            <span class="mb-1 text-sm font-semibold text-gray-900 dark:text-white">비밀번호 변경</span>
                            <div class="mb-2 text-sm font-normal">고객님의 비밀번호 변경이 완료되었습니다.
                            </div>
                            <div class="grid grid-cols-1 gap-1">
                                <div>
                                    <a data-dismiss-target="#toast-interactive"
                                        class="inline-flex justify-center w-full px-2 py-1.5 text-xs font-medium text-center text-white bg-blue-600 rounded-lg hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-500 dark:hover:bg-blue-600 dark:focus:ring-blue-800">확인</a>
                                </div>
                            </div>
                        </div>
                        <button type="button"
                            class="ml-auto -mx-1.5 -my-1.5 bg-white items-center justify-center flex-shrink-0 text-gray-400 hover:text-gray-900 rounded-lg focus:ring-2 focus:ring-gray-300 p-1.5 hover:bg-gray-100 inline-flex h-8 w-8 dark:text-gray-500 dark:hover:text-white dark:bg-gray-800 dark:hover:bg-gray-700"
                            data-dismiss-target="#toast-interactive" aria-label="Close">
                            <span class="sr-only">Close</span>
                            <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 14 14">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                            </svg>
                        </button>
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
            <p class="my-6 text-gray-500 dark:text-gray-400">TUKOREA CP-CoP Dragon and Horse Coding knowledge sharing
                site with ChatGPT API</p>

            <ul class="flex flex-wrap justify-center items-center mb-6 text-gray-900 dark:text-white">
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6 ">About</a>
                </li>

                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6 ">Email</a>
                </li>

                <li>
                    <a href="https://www.tukorea.ac.kr/tukorea/index.do#none"
                        class="mr-4 hover:underline md:mr-6 ">TUKOREA</a>
                </li>
            </ul>
            <span class="text-sm text-gray-500 sm:text-center dark:text-gray-400">© 2023 <a
                    href="https://www.tukorea.ac.kr/tukorea/index.do#none" class="hover:underline">TUKOREA</a>. All
                Rights Reserved.</span>
        </div>
    </footer>
    <!--=============== MAIN JS ===============-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/mypage.js"></script>
</body>

</html>