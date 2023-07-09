<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.example.coyongyong.controller.mypageController"%>
<!DOCTYPE html>
<html>

<head>
    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/mypage.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/charts.css/dist/charts.min.css">
</head>

<body>
    <div class="antialiased bg-gray-50 dark:bg-gray-900">

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
                        <img class="w-8 h-8 rounded-full background_color_white" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png"
                            alt="user photo">
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

        <div class="flex_mode">
            <div class="mypage__flex">
                <div
                    class="mymy w-full max-w-sm bg-white border border-gray-200 shadow dark:bg-gray-800 dark:border-gray-700 ProfileActivity_item__DqwKL">
                    <div class="flex justify-end px-4 pt-10"> </div>
                    <div class="flex flex-col items-center pb-10">
                        <img class="w-24 h-24 mb-3 rounded-full shadow-lg" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png"
                            alt="Bonnie image" />
                        <h5 class="mb-1 text-xl font-medium text-gray-900 dark:text-white">StayC</h5>
                        <h6 class="text-mi text-gray-500 dark:text-gray-400">전현준</h6>
                        <h6 class="text-sm text-gray-600 dark:text-gray-400">자고 싶습니다..</h6>
                        <div class="flex mt-4 space-x-3 md:mt-6">
                            <button data-modal-target="authentication-modal" data-modal-toggle="authentication-modal"
                                type="button"
                                class="focus:outline-none text-white button_color focus:ring-4  font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 ">비밀번호
                                변경</button>
                        </div>
                        <div class="flex mt-4 space-x-3 md:mt-6">
                            <button type="button"
                                class="focus:outline-none text-white button_color focus:ring-4 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:focus:ring-yellow-900">회원정보
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
                <% mypageController a = new mypageController(); %>
                    <div
                        class="margin-bottom text-sm font-medium text-center text-gray-500 border-b border-gray-200 dark:text-gray-400 dark:border-gray-700">
                        <ul class="flex flex-wrap -mb-px">
                            <li class="mr-2">
                                <a href="<% a.mypage(); %>"
                                    class="inline-block p-4 text-blue-600 border-b-2 border-blue-600 rounded-t-lg active dark:text-blue-500 dark:border-blue-500 font-semibold" aria-current="page">대시보드</a>
                            </li>
                            <li class="mr-2">
                                <a href="<% a.mypageQuestion(); %>"
                                    class="inline-block p-4 border-b-2 border-transparent rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300"
                                    >질문</a>
                            </li>
                            <li class="mr-2">
                                <a href="<% a.mypageStudy(); %>"
                                    class="inline-block p-4 border-b-2 border-transparent rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300">공부일지</a>
                            </li>
                            <li class="mr-2">
                                <a href="<% a.mypageProblem(); %>"
                                    class="inline-block p-4 border-b-2 border-transparent rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300">레벨</a>
                            </li>
                            <!-- <li>
                                <a
                                    class="inline-block p-4 text-gray-400 rounded-t-lg cursor-not-allowed dark:text-gray-500">Disabled</a>
                            </li> -->
                        </ul>
                    </div>


                    <div class="ProfileActivity_container__FMT8T">
                        <div class="ProfileActivity_streak__AwMtA ProfileActivity_item__DqwKL">
                            <div class="StreakStatus_container__ik8uu StreakStatus_fitStreakWrapper__oDUTJ">
                                <div class="StreakStatus_title__nWxWn">출석</div>

                                <div class="flex-auto p-4 top">
                                    <!-- https://chartscss.org/charts/column/ -->
                                    <table id="column-example-1" class="charts-css column show-labels data-spacing-10">
                                        <caption> Column Example #1 </caption>
                                        <tbody>
                                            <tr>
                                                <th scope="row"> 월 </th>
                                                <td style="--size: 0.2;"></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"> 화 </th>
                                                <td style="--size: 0.4;"></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"> 수 </th>
                                                <td style="--size: 0.6;"></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"> 목 </th>
                                                <td style="--size: 0.8;"></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"> 금 </th>
                                                <td style="--size: 1;"></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"> 토 </th>
                                                <td style="--size: 0.8;"></td>
                                            </tr>
                                            <tr>
                                                <th scope="row"> 일 </th>
                                                <td style="--size: 1;"></td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>

                                <div class="StreakStatus_streakWrapper__Otl6S StreakStatus_fitStreakWrapper__oDUTJ">
                                    <div class="StreakStatus_daily__aj6qg StreakStatus_fitStreakWrapper__oDUTJ"><svg
                                            width="28" height="28" viewBox="0 0 28 28" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M12.6212 2.20848C12.5222 2.10853 12.3526 2.1372 12.2959 2.26599C11.8584 3.26061 10.2563 6.81564 8.78341 8.97795C6.9197 11.7128 5.44118 14.3208 5.26384 15.5049C5.08649 16.689 4.40883 18.718 6.29868 22.2152C7.4967 24.4323 9.4396 25.4591 10.3197 25.8291C10.4851 25.8986 10.6389 25.7225 10.5686 25.5575C10.1525 24.5794 9.38624 22.1511 10.868 20.016C12.6472 17.4523 12.5356 17.7943 13.1236 16.3086C13.1828 16.1592 13.3827 16.1364 13.4686 16.2722C13.8086 16.8094 14.4855 17.9386 14.8365 18.936C14.8999 19.1161 15.1667 19.1402 15.244 18.9656C15.3897 18.6371 15.5687 18.2149 15.6871 17.8725C15.739 17.7226 15.934 17.6732 16.0364 17.7944C16.8316 18.7366 19.2136 21.9815 17.7583 25.57C17.692 25.7335 17.839 25.8947 17.9982 25.8189C18.88 25.3991 20.9073 24.1651 22.1355 21.2844C23.8362 17.2947 22.5643 13.6575 22.2096 12.7558C21.8314 11.7949 20.3824 8.7778 18.7734 6.82044C18.6663 6.69015 18.4539 6.74769 18.416 6.91203C18.2488 7.63633 17.8115 9.14066 16.9236 9.9801C16.8003 10.0966 16.6028 9.99149 16.5964 9.82197C16.5554 8.74074 16.1012 5.72077 12.6212 2.20848Z"
                                                fill="#FF6231"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M12.6447 3.32152C11.9727 4.79764 10.6509 7.56811 9.4033 9.39962L9.40322 9.39974C8.48037 10.754 7.65885 12.0682 7.04923 13.1824C6.42126 14.3301 6.07215 15.1711 6.0056 15.6154C5.98187 15.7739 5.95321 15.9324 5.92378 16.0951C5.82809 16.6243 5.72429 17.1984 5.75547 17.9614C5.79508 18.9305 6.06327 20.2013 6.95854 21.8581L6.95854 21.8581C7.65095 23.1395 8.6223 23.9847 9.44297 24.5159C9.13438 23.1963 9.04909 21.321 10.2519 19.5878C10.6621 18.9968 10.966 18.5679 11.1999 18.2379C11.4864 17.8337 11.6677 17.578 11.81 17.3545C12.0354 17.0008 12.1319 16.7757 12.4263 16.032C12.6995 15.3417 13.6717 15.1902 14.1024 15.8706C14.3211 16.216 14.6924 16.826 15.0317 17.5038C15.3104 16.9735 16.1099 16.7182 16.6095 17.3101C17.0367 17.8162 17.8895 18.9382 18.4442 20.4276C18.8657 21.5596 19.1225 22.9274 18.8694 24.3988C19.7111 23.7495 20.7247 22.6805 21.4456 20.9897C23.0281 17.2773 21.8447 13.8763 21.5117 13.0297C21.2005 12.2392 20.1149 9.96361 18.8397 8.14947C18.7785 8.32563 18.7093 8.50878 18.6311 8.69394C18.3713 9.30949 17.9906 10.003 17.4389 10.5245C17.1147 10.831 16.6841 10.8308 16.3799 10.6781C16.0891 10.5322 15.8613 10.2288 15.8469 9.84982C15.8145 8.99358 15.4695 6.42917 12.6447 3.32152ZM11.6095 1.96343C11.8868 1.333 12.6961 1.21789 13.154 1.68003C15.7798 4.33019 16.7764 6.74217 17.1441 8.34619C17.1805 8.26907 17.2155 8.19045 17.2491 8.11071C17.4679 7.59234 17.6074 7.07998 17.6852 6.7428C17.8501 6.02845 18.8143 5.68841 19.3528 6.34362C21.03 8.38403 22.5136 11.4798 22.9075 12.4805L22.9076 12.4807C23.2839 13.4376 24.6443 17.3111 22.8255 21.5779L22.8255 21.5779C21.5046 24.6761 19.3119 26.0236 18.3207 26.4955C17.934 26.6796 17.5098 26.5756 17.2482 26.2983C16.9989 26.0341 16.9196 25.6418 17.0633 25.2876C17.7008 23.7155 17.5068 22.2087 17.0385 20.951C16.7536 20.186 16.3721 19.5284 16.0336 19.0316C15.9976 19.115 15.9626 19.1948 15.9297 19.269C15.7375 19.7026 15.3124 19.8577 14.9755 19.8309C14.6449 19.8045 14.2746 19.5979 14.1291 19.1844C13.9468 18.6663 13.6624 18.0976 13.3889 17.6053C13.2977 17.7908 13.2001 17.9642 13.0751 18.1604C12.9167 18.4091 12.7031 18.7109 12.3876 19.1564C12.1505 19.4913 11.856 19.9073 11.4842 20.443C10.2384 22.2382 10.8615 24.3296 11.2588 25.2633C11.416 25.6328 11.3215 26.025 11.0902 26.2822C10.8508 26.5484 10.4385 26.6921 10.0291 26.5199C9.07288 26.1179 6.95211 25.0015 5.63889 22.5712C4.64431 20.7307 4.30641 19.2384 4.25672 18.0227C4.21798 17.0748 4.3616 16.2896 4.45997 15.7518C4.4848 15.6161 4.50674 15.4961 4.52215 15.3933C4.63294 14.6535 5.11177 13.5984 5.73332 12.4624C6.37322 11.2929 7.22282 9.93569 8.16367 8.55504C9.59179 6.45846 11.1684 2.96614 11.6095 1.96343Z"
                                                fill="#333236"></path>
                                        </svg>0일 연속 답변</div>
                                    <div class="StreakStatus_weekly__1_c4Y StreakStatus_fitStreakWrapper__oDUTJ"><svg
                                            width="28" height="28" viewBox="0 0 28 28" fill="none"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M3.35999 9.57414C3.35999 7.86567 3.35999 7.01143 3.69775 6.36122C3.98237 5.81329 4.42913 5.36653 4.97706 5.0819C5.62728 4.74414 6.48151 4.74414 8.18999 4.74414H19.81C21.5185 4.74414 22.3727 4.74414 23.0229 5.0819C23.5708 5.36653 24.0176 5.81329 24.3022 6.36122C24.64 7.01143 24.64 7.86567 24.64 9.57414V19.171C24.64 20.8795 24.64 21.7337 24.3022 22.384C24.0176 22.9319 23.5708 23.3787 23.0229 23.6633C22.3727 24.001 21.5185 24.001 19.81 24.001H8.18998C6.48151 24.001 5.62728 24.001 4.97706 23.6633C4.42913 23.3787 3.98237 22.9319 3.69775 22.384C3.35999 21.7337 3.35999 20.8795 3.35999 19.171V9.57414Z"
                                                fill="white"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M8.15733 3.99414H19.8426C20.6692 3.99413 21.3358 3.99413 21.8754 4.03893C22.431 4.08508 22.9186 4.18258 23.3686 4.41634C24.0536 4.77212 24.612 5.33058 24.9678 6.01549C25.2015 6.46549 25.299 6.95315 25.3452 7.50876C25.39 8.04831 25.39 8.71496 25.39 9.54148V19.2037C25.39 20.0302 25.39 20.6969 25.3452 21.2364C25.299 21.792 25.2015 22.2797 24.9678 22.7297C24.612 23.4146 24.0536 23.9731 23.3686 24.3288C22.9186 24.5626 22.431 24.6601 21.8754 24.7062C21.3358 24.7511 20.6692 24.751 19.8426 24.751H8.15732C7.3308 24.751 6.66415 24.7511 6.12461 24.7062C5.56899 24.6601 5.08134 24.5626 4.63133 24.3288C3.94642 23.9731 3.38797 23.4146 3.03219 22.7297C2.79843 22.2797 2.70092 21.792 2.65478 21.2364C2.60997 20.6969 2.60998 20.0302 2.60999 19.2037V9.54148C2.60998 8.71496 2.60997 8.04831 2.65478 7.50876C2.70092 6.95315 2.79843 6.46549 3.03219 6.01549C3.38797 5.33058 3.94642 4.77212 4.63133 4.41634C5.08134 4.18258 5.569 4.08508 6.12461 4.03893C6.66415 3.99413 7.3308 3.99413 8.15733 3.99414ZM6.24875 5.53379C5.78757 5.57209 5.523 5.64346 5.32279 5.74746C4.91185 5.96093 4.57678 6.296 4.36331 6.70695C4.2593 6.90716 4.18793 7.17173 4.14963 7.6329C4.11059 8.10306 4.10999 8.70732 4.10999 9.57414V19.171C4.10999 20.0379 4.11059 20.6421 4.14963 21.1123C4.18793 21.5735 4.2593 21.838 4.36331 22.0382C4.57678 22.4492 4.91185 22.7843 5.32279 22.9977C5.52301 23.1017 5.78757 23.1731 6.24875 23.2114C6.7189 23.2504 7.32316 23.251 8.18998 23.251H19.81C20.6768 23.251 21.2811 23.2504 21.7512 23.2114C22.2124 23.1731 22.477 23.1017 22.6772 22.9977C23.0881 22.7843 23.4232 22.4492 23.6367 22.0382C23.7407 21.838 23.812 21.5735 23.8503 21.1123C23.8894 20.6421 23.89 20.0379 23.89 19.171V9.57414C23.89 8.70732 23.8894 8.10306 23.8503 7.6329C23.812 7.17173 23.7407 6.90716 23.6367 6.70695C23.4232 6.296 23.0881 5.96093 22.6772 5.74746C22.477 5.64346 22.2124 5.57209 21.7512 5.53379C21.2811 5.49474 20.6768 5.49414 19.81 5.49414H8.18999C7.32316 5.49414 6.7189 5.49474 6.24875 5.53379Z"
                                                fill="#333236"></path>
                                            <path
                                                d="M3.35999 9.57414C3.35999 7.86567 3.35999 7.01143 3.69775 6.36122C3.98237 5.81329 4.42913 5.36653 4.97706 5.0819C5.62728 4.74414 6.48151 4.74414 8.18999 4.74414H19.81C21.5185 4.74414 22.3727 4.74414 23.0229 5.0819C23.5708 5.36653 24.0176 5.81329 24.3022 6.36122C24.64 7.01143 24.64 7.86567 24.64 9.57414V11.263H3.35999V9.57414Z"
                                                fill="#A64EFF"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M8.15733 3.99414H19.8426C20.6692 3.99413 21.3358 3.99413 21.8754 4.03893C22.431 4.08508 22.9186 4.18258 23.3686 4.41634C24.0536 4.77212 24.612 5.33058 24.9678 6.01549C25.2015 6.46549 25.299 6.95315 25.3452 7.50876C25.39 8.04831 25.39 8.71496 25.39 9.54148V12.013H2.60999L2.60999 9.54148C2.60998 8.71496 2.60997 8.04831 2.65478 7.50876C2.70092 6.95315 2.79843 6.46549 3.03219 6.01549C3.38797 5.33058 3.94642 4.77212 4.63133 4.41634C5.08134 4.18258 5.569 4.08508 6.12461 4.03893C6.66415 3.99413 7.3308 3.99413 8.15733 3.99414ZM6.24875 5.53379C5.78757 5.57209 5.523 5.64346 5.32279 5.74746C4.91185 5.96093 4.57678 6.296 4.36331 6.70695C4.2593 6.90716 4.18793 7.17173 4.14963 7.6329C4.11059 8.10306 4.10999 8.70732 4.10999 9.57414V10.513H23.89V9.57414C23.89 8.70732 23.8894 8.10306 23.8503 7.6329C23.812 7.17173 23.7407 6.90716 23.6367 6.70695C23.4232 6.296 23.0881 5.96093 22.6772 5.74746C22.477 5.64346 22.2124 5.57209 21.7512 5.53379C21.2811 5.49474 20.6768 5.49414 19.81 5.49414H8.18999C7.32316 5.49414 6.7189 5.49474 6.24875 5.53379Z"
                                                fill="#333236"></path>
                                            <path
                                                d="M17.6779 14.2493C17.5348 14.1096 17.341 14.0312 17.1391 14.0312C16.9371 14.0313 16.7434 14.1096 16.6002 14.2493L13.1247 17.6559L11.6734 16.2333C11.5446 16.1074 11.3702 16.0367 11.1882 16.0367C11.0063 16.0367 10.8318 16.1074 10.703 16.2333L10.0627 16.8609C9.93437 16.9872 9.8623 17.1581 9.8623 17.3364C9.8623 17.5146 9.93437 17.6856 10.0627 17.8118L12.6306 20.3336C12.6949 20.3972 12.7715 20.4476 12.8559 20.4819C12.9403 20.5162 13.0307 20.5337 13.1221 20.5335C13.2134 20.5338 13.3039 20.5163 13.3883 20.482C13.4727 20.4478 13.5493 20.3974 13.6136 20.3339L18.211 15.8281C18.3534 15.6878 18.4334 15.4979 18.4334 15.2999C18.4334 15.102 18.3534 14.9121 18.211 14.7717L17.6779 14.2493Z"
                                                fill="#FF5C9E"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M16.0765 13.7124C16.3613 13.4346 16.7436 13.2812 17.1391 13.2812C17.5346 13.2812 17.9169 13.4346 18.2017 13.7124L18.2029 13.7137L18.7372 14.2374C19.0212 14.517 19.1834 14.8988 19.1834 15.2999C19.1834 15.701 19.0212 16.0828 18.7372 16.3624L18.7359 16.3637L14.1404 20.8678C14.14 20.8681 14.1397 20.8685 14.1393 20.8689C14.0045 21.0016 13.845 21.1061 13.6704 21.177C13.4953 21.248 13.3082 21.2841 13.1196 21.2835L13.1221 20.5335L13.1241 21.2835C12.9356 21.284 12.7484 21.2478 12.5734 21.1766C12.3987 21.1056 12.2391 21.0009 12.1043 20.868C12.1041 20.8677 12.1038 20.8675 12.1035 20.8672L9.53722 18.3469C9.26714 18.0813 9.1123 17.7179 9.1123 17.3364C9.1123 16.9548 9.26675 16.5919 9.53682 16.3262L10.1788 15.697C10.4493 15.4326 10.8126 15.2867 11.1882 15.2867C11.5639 15.2867 11.9272 15.4326 12.1977 15.697L12.1984 15.6977L13.1247 16.6057L16.0753 13.7137L16.0765 13.7124ZM17.124 14.7861C17.1239 14.7862 17.124 14.7861 17.124 14.7861L13.1247 18.7061L11.1882 16.808L10.6491 17.3364L13.1223 19.7653L17.6784 15.2999L17.1542 14.7861C17.1542 14.7861 17.1542 14.7862 17.1542 14.7861C17.1526 14.7846 17.1473 14.7812 17.1391 14.7812C17.1308 14.7812 17.1256 14.7846 17.124 14.7861Z"
                                                fill="#333236"></path>
                                            <path
                                                d="M7 4.10278C7 3.28662 7.66162 2.625 8.47778 2.625C9.29393 2.625 9.95556 3.28662 9.95556 4.10278V6.46722C9.95556 7.28338 9.29393 7.945 8.47778 7.945C7.66162 7.945 7 7.28338 7 6.46722V4.10278Z"
                                                fill="#F8ECFF"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M6.25 4.10278C6.25 2.87241 7.24741 1.875 8.47778 1.875C9.70815 1.875 10.7056 2.87241 10.7056 4.10278V6.46722C10.7056 7.69759 9.70814 8.695 8.47778 8.695C7.24741 8.695 6.25 7.69759 6.25 6.46722V4.10278ZM8.47778 3.375C8.07584 3.375 7.75 3.70084 7.75 4.10278V6.46722C7.75 6.86916 8.07584 7.195 8.47778 7.195C8.87972 7.195 9.20556 6.86916 9.20556 6.46722V4.10278C9.20556 3.70084 8.87972 3.375 8.47778 3.375Z"
                                                fill="#333236"></path>
                                            <path
                                                d="M17.5466 4.27758C17.5466 3.46143 18.2083 2.7998 19.0244 2.7998C19.8406 2.7998 20.5022 3.46143 20.5022 4.27758V6.64203C20.5022 7.45818 19.8406 8.1198 19.0244 8.1198C18.2083 8.1198 17.5466 7.45818 17.5466 6.64203V4.27758Z"
                                                fill="#F8ECFF"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M16.7966 4.27758C16.7966 3.04721 17.794 2.0498 19.0244 2.0498C20.2548 2.0498 21.2522 3.04722 21.2522 4.27758V6.64203C21.2522 7.8724 20.2548 8.8698 19.0244 8.8698C17.794 8.8698 16.7966 7.87239 16.7966 6.64203V4.27758ZM19.0244 3.5498C18.6225 3.5498 18.2966 3.87564 18.2966 4.27758V6.64203C18.2966 7.04397 18.6225 7.3698 19.0244 7.3698C19.4264 7.3698 19.7522 7.04397 19.7522 6.64203V4.27758C19.7522 3.87564 19.4263 3.5498 19.0244 3.5498Z"
                                                fill="#333236"></path>
                                        </svg>0주째 출석 중</div>
                                </div>
                            </div>
                        </div>
                        <div class="ProfileActivity_allTime__Av1uD ProfileActivity_item__DqwKL">
                            <div class="container">
                                <div class="CumulativeActivities_title__Vr_Tc">누적 학습 현황</div>
                                <div class="CumulativeActivities_contents__8YZwm">
                                    <div class="CumulativeActivities_row__etBvi">
                                        <p class="CumulativeActivities_rowTitle__vSGlH">작성한 공부일지</p>
                                        <p class="CumulativeActivities_rowCount___O6i2">154개</p>
                                    </div>
                                    <div class="CumulativeActivities_row__etBvi">
                                        <p class="CumulativeActivities_rowTitle__vSGlH">회원 질문</p>
                                        <p class="CumulativeActivities_rowCount___O6i2">0개</p>
                                    </div>
                                    <div class="CumulativeActivities_row__etBvi">
                                        <p class="CumulativeActivities_rowTitle__vSGlH">회원 답변</p>
                                        <p class="CumulativeActivities_rowCount___O6i2">7개</p>
                                    </div>
                                    <div class="CumulativeActivities_row__etBvi">
                                        <p class="CumulativeActivities_rowTitle__vSGlH">채택된 답변</p>
                                        <p class="CumulativeActivities_rowCount___O6i2">7개</p>
                                    </div>
                                    <div class="CumulativeActivities_row__etBvi">
                                        <p class="CumulativeActivities_rowTitle__vSGlH">획득한 좋아요</p>
                                        <p class="CumulativeActivities_rowCount___O6i2">14개</p>
                                    </div>
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
            <!--             
            <ul class="flex flex-wrap justify-center items-center mb-6 text-gray-900 dark:text-white">
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6 ">About</a>
                </li>
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6">Premium</a>
                </li>
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6 ">Campaigns</a>
                </li>
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6">Blog</a>
                </li>
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6">Affiliate Program</a>
                </li>
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6">FAQs</a>
                </li>
                <li>
                    <a href="#" class="mr-4 hover:underline md:mr-6">Contact</a>
                </li>
            </ul> -->
            <span class="text-sm text-gray-500 sm:text-center dark:text-gray-400">© 2023 <a href="#"
                    class="hover:underline">TUKOREA</a>. All Rights Reserved.</span>
        </div>
    </footer>
    <!--=============== MAIN JS ===============-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/mypage.js"></script>
</body>

</html>