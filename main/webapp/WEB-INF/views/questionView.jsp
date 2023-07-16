<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    import="com.example.coyongyong.controller.mypageController" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- flowbite 설정 -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.css" rel="stylesheet" />

        <!-- 폰트 설정 -->
        <link
            href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Hi+Melody&family=Jua&family=Nanum+Gothic:wght@800&family=Poor+Story&display=swap"
            rel="stylesheet">

        <link
            href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gowun+Dodum&family=Hi+Melody&family=Jua&family=Nanum+Gothic:wght@800&family=Poor+Story&display=swap"
            rel="stylesheet">

        <title>questionView</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/questionView.css">
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
					<a href="http://localhost:8080/login" >
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
                  <form class="hover:bg-gray-100 dark:hover:bg-gray-600" action="http://localhost:8080/logout" method="post">
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
                    class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500"
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

        <main>
            <div class="top block">
                <div class="toptop">
                    <!-- 질문에 대한 내용 적어주는 공간. -->
                    <div class="white-block">
                        <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/letter-q.png" class="img">
                        <div class="question_title">
                            <span id="question_title">
                                <font size=4>무슨 질문을 해볼까나? <br>만약 질문이 두 줄이라면!!?</font>
                            </span>
                            <span id="question_title">
                                <font size=2>이다현&nbsp;|&nbsp;2023.07.10</font>
                            </span>
                        </div>
                        <div class="question_content">
                            <!-- 이거는 더 이쁘게 어떻게 꾸밀지 생각좀~ -->
                            <h3 id="question_language">C언어 - 2 level</h3>
                            <h4>&nbsp;&nbsp;질문 내용 넣을꺼임 질문 내용이 길면 어떻게 될까 궁금하다 그치? 근데 이걸 다 채우는 사람이 있을까? 진짜로? 아니 너무 긴데? 근데
                                가능할 것 같아 왜냐면 나도
                                이런적 많거든... 아직 조금 더 남았뉑 이정도면 나쁘지 않다 이쁘다 굿</h4>
                            <div id="codeContainer"></div>
                        </div>
                    </div>
                    <!-- <div class="content"></div> -->

                    <!-- 용용이 답변 생성 위치. -->
                    <div class="white-block">
                        <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png" class="img">
                        <font size=4> 용용이의 답변이 있습니다!</font>
                        <div class="yongyong_answer">
                            <h4 class="yongyong_answer_content">
                                <font size=3>&nbsp;'데이터베이스에서 정규화(Normalization)는 중복 데이터를 최소화하고 데이터의 일관성과 무결성을 유지하기 위한
                                    과정입니다. 정규화를 통해 데이터
                                    중복을 최소화하여 데이터베이스의 용량을 줄이고 데이터의 일관성을 유지할 수 있습니다.

                                    다음은 데이터베이스에서 정규화를 수행하는 방법입니다.

                                    제1정규화(1NF) : 각 열에는 하나의 값만 저장되도록 테이블을 분해합니다.

                                    제2정규화(2NF) : 부분 함수 종속성(Partial Functional Dependency)을 제거하기 위해 테이블을 분해합니다.

                                    제3정규화(3NF) : 이행적 함수 종속성(Transitive Dependency)을 제거하기 위해 테이블을 분해합니다.

                                    보이스-코드 정규형(BCNF) : 후보키가 아닌 열이 후보키에 종속되는 함수 종속성을 제거하기 위해 테이블을 분해합니다.

                                    제4정규화(4NF) : 다중 값 종속성(Multi-valued Dependency)을 제거하기 위해 테이블을 분해합니다.

                                    제5정규화(5NF) : 조인 종속성(Join Dependency)을 제거하기 위해 테이블을 분해합니다.

                                    정규화를 수행하면 데이터 중복을 줄일 수 있고, 데이터의 일관성과 무결성을 유지할 수 있으므로 데이터베이스의 성능과 유지보수성을 향상시킬 수
                                    있습니다.', 0, '정규화'),
                                    (2, 2, 3, 'MySQL에서 date 형식은 YYYY-MM-DD의 형식으로 표현됩니다.

                                    예를 들어, 2023년 4월 15일은 2023-04-15와 같이 표현됩니다.

                                    MySQL에서 date 형식을 사용하는 방법은 다음과 같습니다.

                                    MySQL에서는 date 형식 외에도 datetime, timestamp 등의 다양한 날짜와 시간 데이터 형식을 제공합니다. 각각의 데이터 형식은
                                    특정한 상황에 적합한 데이터를 저장할 수
                                    있도록 다양한 옵션을 제공하므로, 상황에 맞게 적절한 데이터 형식을 선택하여 사용하면 됩니다.', 0, 'date형식'),
                                    (3, 3, 2, 'Kotlin에서 안드로이드 앱을 개발할 때 레이아웃을 구성하는 방법은 XML을 사용합니다. XML은 안드로이드 레이아웃을 설계하고
                                    정의하는 데 사용되는 마크업
                                    언어입니다. Kotlin에서는 XML 레이아웃을 활용하여 뷰와 뷰 그룹을 배치하고 구성할 수 있습니다.

                                    다음은 Kotlin에서 레이아웃을 구성하는 방법입니다.

                                    res/layout 디렉토리에 XML 레이아웃 파일을 생성합니다. 예를 들어, activity_main.xml 파일을 생성합니다.

                                    XML 파일에서 뷰와 뷰 그룹을 추가합니다. 예를 들어, LinearLayout 안에 TextView를 추가하는 코드는 다음과 같습니다.

                                    Kotlin에서는 안드로이드 스튜디오를 통해 레이아웃을 시각적으로 디자인할 수도 있습니다. 레이아웃 디자인을 위해 Design 탭을 사용하여 뷰와 뷰
                                    그룹을 쉽게 추가하고 구성할 수
                                    있습니다. 또한 Code 탭에서 XML 코드를 확인하고 직접 편집할 수도 있습니다.'<br>
                                </font>
                            </h4>
                        </div>
                        <div class="answer_like">
                            <div class="answer_like">
                                <a id="answer_like">
                                    <button type="button"
                                        class="focus:outline-none text-white bg-blue-400 hover:bg-blue-500 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800 flex items-center"
                                        id="subscribe">
                                        <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/click.png" width="30px" height="30px" class="heart">
                                        <font size=5>&nbsp;채택하기</font>
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- 사용자의 답변 적어주는 공간 -->
                    <div class="white-block">
                        <div class="answer_space">
                            <div class="answer_title">
                                <h1>사용자의 답변이 N개 등록되어 있습니다!</h1>
                            </div>
                            <div class="answer_content">
                                <figure class="max-w-screen-md title">
                                    <figcaption class="flex items-center mt-6 space-x-3">
                                        <img class="w-10 h-10 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png"
                                            alt="profile picture">
                                        <div class="items-center divide-x-2 divide-gray-300 dark:divide-gray-700">
                                            <div class="grid-2">
                                                <cite class="pr-3 font-medium text-gray-900 dark:text-white">김밍디</cite>
                                                <font size=1>좋아요 : 5 | 싫어요 : 10</font>
                                            </div>
                                        </div>
                                    </figcaption>
                                </figure>
                                <h4 class="answer">
                                    <font size=3 id="answer_content multiline-text">&nbsp;데이터베이스에서 정규화(Normalization)는
                                        중복 데이터를 최소화하고 데이터의 일관성과 무결성을 유지하기 위한
                                        과정입니다. 정규화를 통해 데이터 중복을 최소화하여 데이터베이스의 용량을 줄이고 데이터의 일관성을 유지할 수 있습니다.

                                        다음은 데이터베이스에서 정규화를 수행하는 방법입니다.

                                        제1정규화(1NF) : 각 열에는 하나의 값만 저장되도록 테이블을 분해합니다.

                                        제2정규화(2NF) : 부분 함수 종속성(Partial Functional Dependency)을 제거하기 위해 테이블을 분해합니다.

                                        제3정규화(3NF) : 이행적 함수 종속성(Transitive Dependency)을 제거하기 위해 테이블을 분해합니다.

                                        보이스-코드 정규형(BCNF) : 후보키가 아닌 열이 후보키에 종속되는 함수 종속성을 제거하기 위해 테이블을 분해합니다.

                                        제4정규화(4NF) : 다중 값 종속성(Multi-valued Dependency)을 제거하기 위해 테이블을 분해합니다.

                                        제5정규화(5NF) : 조인 종속성(Join Dependency)을 제거하기 위해 테이블을 분해합니다.

                                        정규화를 수행하면 데이터 중복을 줄일 수 있고, 데이터의 일관성과 무결성을 유지할 수 있으므로 데이터베이스의 성능과 유지보수성을 향상시킬 수
                                        있습니다.', 0, '정규화'),
                                        (2, 2, 3, 'MySQL에서 date 형식은 YYYY-MM-DD의 형식으로 표현됩니다.

                                        예를 들어, 2023년 4월 15일은 2023-04-15와 같이 표현됩니다.

                                        MySQL에서 date 형식을 사용하는 방법은 다음과 같습니다.

                                        MySQL에서는 date 형식 외에도 datetime, timestamp 등의 다양한 날짜와 시간 데이터 형식을 제공합니다. 각각의 데이터
                                        형식은 특정한 상황에 적합한 데이터를 저장할
                                        수
                                        있도록 다양한 옵션을 제공하므로, 상황에 맞게 적절한 데이터 형식을 선택하여 사용하면 됩니다.', 0, 'date형식'),
                                        (3, 3, 2, 'Kotlin에서 안드로이드 앱을 개발할 때 레이아웃을 구성하는 방법은 XML을 사용합니다. XML은 안드로이드 레이아웃을
                                        설계하고 정의하는 데 사용되는 마크업
                                        언어입니다. Kotlin에서는 XML 레이아웃을 활용하여 뷰와 뷰 그룹을 배치하고 구성할 수 있습니다.

                                        다음은 Kotlin에서 레이아웃을 구성하는 방법입니다.

                                        res/layout 디렉토리에 XML 레이아웃 파일을 생성합니다. 예를 들어, activity_main.xml 파일을 생성합니다.

                                        Kotlin에서는 안드로이드 스튜디오를 통해 레이아웃을 시각적으로 디자인할 수도 있습니다. 레이아웃 디자인을 위해 Design 탭을 사용하여
                                        뷰와 뷰 그룹을 쉽게 추가하고 구성할 수
                                        있습니다. 또한 Code 탭에서 XML 코드를 확인하고 직접 편집할 수도 있습니다.'<br>
                                    </font>
                                </h4>
                            </div>
                            <div class="answer_like">
                                <a id="answer_like">
                                    <button type="button"
                                        class="focus:outline-none text-white bg-blue-400 hover:bg-blue-500 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800"
                                        id="like">
                                        <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/like.png" width="30px" height="30px" class="heart">
                                        마음에 들어요
                                    </button>
                                </a>
                                <a id="answer_unlike">
                                    <button type="button"
                                        class="focus:outline-none text-white bg-blue-400 hover:bg-blue-500 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800"
                                        id="like">
                                        <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/unlike.png" width="30px" height="30px" class="heart">
                                        마음에 들지 않아요
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>


                </div>

            </div>
            <div class="block">
                <font size=5>
                    질문 더보기
                </font>
                <div class="flex-grow">
                    <div class="flex questionList">
                        <div></div>
                        <a class="question" href="#">
                            <div id="question">
                                <div class="flex items-center space-x-4">
                                    <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="" />
                                    <span class="font-medium dark:text-white">
                                        민지 킴
                                    </span>
                                </div>
                                &nbsp;질문제목<br>길면 어쩔껀데?<br>이렇게까지 길면 어떻게 될꼰뒝? 가로가 길면 어떻게 될꺼야?<br>더 길면 어떻게 되지 넘어가니? 어쩔꺼냐구~
                                더 길어야하니...? 어디까지
                                가야하니..? 와 아직도 안됐어 질문이 보통 이렇게 길겠지? 히히히히히히히히히히ㅎ히히ㅣ히힣
                            </div>
                        </a>
                        <div class="question">
                            <a id="question" href="#">
                                <div class="flex items-center space-x-4">
                                    <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="" />
                                    <span class="font-medium dark:text-white">
                                        호시
                                    </span>
                                </div>
                            </a>
                        </div>
                        <div class="question">
                            <a id="question" href="#">
                                <div class="flex items-center space-x-4 bg-black">
                                    <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/full_heart_black.png" alt="" />
                                    <span class="font-medium dark:text-white">
                                        우지
                                    </span>
                                </div>
                            </a>
                        </div>
                        <div class="question">
                            <a id="question" href="#">
                                <div class="flex items-center space-x-4">
                                    <img class="w-7 h-7 rounded-full" src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png" alt="" />
                                    <span class="font-medium dark:text-white">
                                        민규 킴
                                    </span>
                                </div>
                            </a>
                        </div>
                        <div></div>
                    </div>
                </div>
            </div>
        </main>

        <footer class="p-4 bg-white md:p-8 lg:p-10 dark:bg-gray-800">
            <div class="mx-auto max-w-screen-xl text-center">
                <a class="flex justify-center items-center text-2xl font-semibold text-gray-900 dark:text-white">
                    <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png" class="footer-logo">
                </a>
                <p class="my-6 text-gray-500 dark:text-gray-400">TUKOREA CP-CoP Dragon and Horse Coding knowledge
                    sharing site
                    with ChatGPT API</p>

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
                    Rights
                    Reserved.</span>
            </div>
        </footer>

        <!-- flowbite 설정 -->
        <script src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/questionView.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>

        <!-- 코드 스타일 시트 -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/styles/hybrid.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/highlight.min.js"></script>
        <script
            src="//cdnjs.cloudflare.com/ajax/libs/highlightjs-line-numbers.js/2.7.0/highlightjs-line-numbers.min.js"></script>

        <script>hljs.initHighlightingOnLoad();</script>
        <script>hljs.initLineNumbersOnLoad();</script>


        <script>
            var text = "첫 번째 문장\n두 번째 문장\n세 번째 문장";
            document.getElementById("multiline-text").innerText = text;
        </script>
    </body>

    </html>