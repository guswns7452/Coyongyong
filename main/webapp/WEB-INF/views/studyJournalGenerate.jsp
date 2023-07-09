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

  <title>coyongyong_StudyJournalGenerate</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/studyJournalGenerate.css">

  <!-- 모나코 에디터 -->
  <script>var require = { paths: { 'vs': '/node_modules/monaco-editor/min/vs' } };</script>
  <script th:src="@{/node_modules/monaco-editor/min/vs/loader.js}"></script>
  <script th:src="@{/node_modules/monaco-editor/min/vs/editor/editor.main.nls.js}"></script>
  <script th:src="@{/node_modules/monaco-editor/min/vs/editor/editor.main.js}"></script>

  <!-- flowbite 설정 -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.js"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.css" rel="stylesheet" />
</head>

<body>
  <nav class="bg-white border-gray-200 dark:bg-gray-900">
    <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
      <a href="localhost:8080" class="flex items-center">
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
              <a href="#"
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
  <main>
    <div class="top">
      <div class="toptop bg-gray-50 rounded-lg p-2.5">
        <div class="title">
          <font size=6>
            공부일지 작성
          </font>
        </div>
        <section class="dark:bg-gray-900">
          <div id="top">
            <form action="#">
              <div class="block gap-4 sm:grid-cols-2 sm:gap-6">
                <div class="sm:col-span-2 w-full">
                  <label for="name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white w-full">공부일지 제목
                    작성</label>
                  <input type="text" name="name" id="name"
                    class="bg-gray-50 border border-primary-300 text-primary-900 text-sm rounded-lg focus:ring-0 border-primary-700 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 margin-bottom"
                    placeholder="공부일지 제목을 작성하세요." required="">
                </div>
                <label for="category" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Language
                  select</label>
                <div class="flex flex-end">
                  <select id="category"
                    class="bg-gray-50 border border-primary-300 text-primary-900 text-sm rounded-lg border-primary-700 focus:ring-0 dark:bg-primary-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 margin-bottom language-selecter">
                    <option selected="">Language</option>
                    <option value="TV">C</option>
                    <option value="GA">Java</option>
                    <option value="PH">Python</option>
                  </select>
                  <div class="items-center mr-4">
                    <input id="yellow-radio" type="radio" value="" name="colored-radio"
                      class="w-4 h-4 text-green-300 bg-gray-100 border-green-300 focus:ring-green-300 dark:focus:ring-yellow-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                    <label for="yellow-radio" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">public
                      mode</label>
                  </div>
                  <div class="items-center mr-4">
                    <input id="yellow-radio" type="radio" value="" name="colored-radio"
                      class="w-4 h-4 text-green-300 bg-gray-100 border-green-300 focus:ring-green-300 dark:focus:ring-green-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                    <label for="yellow-radio" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">private
                      mode</label>
                  </div>
                </div>
                <div>
                  <div class="sm:col-span-2">
                    <label for="description" class="flex mb-2 text-sm font-medium text-gray-900 dark:text-white">공부일지 내용
                      작성</label>
                    <div
                      class="w-full text-sm text-gray-900 bg-gray-50 rounded-lg focus:ring-0 border-primary-700 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500">
                      <!-- Modal toggle -->
                      <div class="flex m-5">
                        <button id="defaultModalButton" data-modal-toggle="defaultModal"
                          class="block text-white bg-lime-700
                          focus:outline-none font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800 code-btn"
                          type="button">
                          코드 작성하기
                        </button>
                      </div>

                      <!-- Main modal -->
                      <div id="defaultModal" tabindex="-1" aria-hidden="true"
                        class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-modal md:h-full">
                        <div class="relative p-4 w-full max-w-2xl h-full md:h-auto">
                          <!-- Modal content -->
                          <div class="relative p-4 bg-white rounded-lg shadow dark:bg-gray-800 sm:p-5">
                            <!-- Modal header -->
                            <div
                              class="flex justify-between items-center pb-4 mb-4 rounded-t border-b sm:mb-5 dark:border-gray-600">
                              <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                                코드 작성
                              </h3>
                              <button type="button"
                                class="text-white bg-lime-700 bg-transparent rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-600 dark:hover:text-white"
                                data-modal-toggle="defaultModal">
                                <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"
                                  xmlns="http://www.w3.org/2000/svg">
                                  <path fill-rule="evenodd"
                                    d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                    clip-rule="evenodd"></path>
                                </svg>
                                <span class="sr-only">Close modal</span>
                              </button>
                            </div>

                            <form action="#">
                              <div class="grid gap-4 mb-4 sm:grid-cols-2">
                                <div class="sm:col-span-2 justify-center">
                                  <div id="monaco" style="width:600px; height:400px"></div>
                                </div>
                              </div>
                              <button id="defaultModalButton" data-modal-toggle="defaultModal"
                                class="block text-white bg-lime-700
                          focus:outline-none font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800 code-btn"
                                type="button" onclick="submitCode()">
                                코드 제출
                              </button>
                            </form>
                          </div>
                        </div>
                      </div>
                      <textarea type="text" id="description"
                        class="flex p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-primary-300 focus:ring-0 border-primary-700 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 studyJournalContent"
                        placeholder="공부일지 내용을 작성하세요." required="">
                      </textarea>
                      <div id="monaco-container" style="height: 50px;"></div>
                      <div class="submit_btn">
                        <input type="submit"
                          class="text-white bg-lime-700 hover:bg-green-500 focus:outline-none font-medium rounded-lg text-sm p-2.5 text-center inline-flex items-center mr-2 justify-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                          value="제출하기">
                        </input>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </section>
      </div>
  </main>

  <script src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/studyJournalGenerate.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>

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
        fontSize: 17,
        language: 'c'
      });
    });
  </script>

<script>
  var editor; // 전역 변수로 선언

  // Monaco Editor 스크립트 로드 완료 후 실행되는 함수
  function initMonaco() {
    // Monaco Editor의 require 설정
    window.require.config({ paths: { 'vs': 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.26.1/min/vs' } });

    // Monaco Editor 라이브러리 로드
    window.require(['vs/editor/editor.main'], function () {
      // Monaco Editor 인스턴스 생성
      editor = monaco.editor.create(document.getElementById('monaco-container'), {
        value: submitCode(),
        language: 'javascript',
        automaticLayout: true,
        theme: 'vs-dark'
      });

      var lineCount = editor.getModel().getLineCount();
      // Monaco Editor의 높이를 계산하기 위한 기본 높이 값
      var lineHeight = 23; // 한 줄의 높이 (예시 값)
      // Monaco Editor 요소 선택
      var monacoContainer = document.getElementById('monaco-container');
      // Monaco Editor의 높이 계산
      var editorHeight = lineCount * lineHeight;
      // Monaco Editor 요소의 높이 설정
      monacoContainer.style.height = editorHeight + 'px';
    });
  }

  function submitCode() {
    // Monaco 에디터의 내용 가져오기
    var code = editor.getValue();

    const container = document.getElementById('monaco-container');
    if (code) {
      console.log("내용 있음!")
      return code;
    } else {
      const container = document.getElementById('monaco-container');
      if (container) {
        container.remove();
      }
    }
  }

  // Monaco Editor 스크립트 로드 후 initMonaco 함수 호출
  window.onload = initMonaco;
</script>

</body>

</html>