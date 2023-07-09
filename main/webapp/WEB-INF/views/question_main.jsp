<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.example.coyongyong.controller.mypageController"%>
<!DOCTYPE html>
<html>

<head>
    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/question_main.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.css" rel="stylesheet" />

</head>

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

<div class="tw-col-span-8 tw-py-8 bg-gray-50">
    <div class="text-center">오늘의 질문</div>
    <div class="text-center"><a href="http://localhost:8080/question/writequestion"><button>질문하러가기</button></a></div>
    <div class="tw-flex tw-flex-col tw-divide-solid tw-divide-x-0 tw-divide-y tw-divide-slate-200">
        <div class="flex_col jus-center">
            <div class="flex_mode">
                <div class="ProfileActivity_streak__AwMtA ProfileActivity_item__DqwKL">
                    <a class="
                    tw-flex tw-gap-2 tw-px-3 tw-py-5
                    tw-cursor-pointer hover:tw-bg-slate-50
                " rel="noreferrer" href="/comments/86057?from=trends&amp;order=1">
                            <div class="tw-flex tw-flex-col tw-items-center tw-gap-2">
                                <p class="tw-w-10 tw-font-bold tw-text-slate-900 tw-text-center tw-leading-none"
                                    style="font-size: 28px;">1</p>
                                <p class="tw-text-xs tw-text-slate-400">—</p>
                            </div>
                            <div class="tw-flex-1 tw-px-1">
                                <div class="tw-mb-4 tw-flex tw-gap-3"><img
                                        class="tw-border tw-border-solid tw-border-slate-200 tw-rounded-full tw-w-9 tw-h-9 tw-bg-slate-200 tw-object-cover"
                                        src="https://publy-cdn.s3.ap-northeast-2.amazonaws.com/user-uploaded/426144/2023.06/81950b0fc76ba60b637883ae243f9012c17d503bba0e3c33bf996de009634fd2.jpeg"
                                        alt="">
                                    <div>
                                        <p class="tw-font-bold tw-text-sm tw-text-slate-900">킴코더</p>
                                        <p class="tw-text-xs tw-text-slate-400">Senior Software Engineer @ AWS</p>
                                    </div>
                                </div>
                                <div class="tw-flex tw-gap-3">
                                    <div class="tw-flex-1 tw-flex tw-flex-col tw-gap-4">
                                        <div class="tw-flex-1">
                                            <p class="tw-text-slate-900 tw-line-clamp-2" style="overflow-wrap: anywhere;"><span
                                                    class="tw-font-bold">면접 전 꼭 알아야 할 설계 패턴 12가지</span><span
                                                    class="tw-text-slate-300">&nbsp;&nbsp;|&nbsp;&nbsp;</span>👉 기본적으로 알아야 하고 자주 사용하는
                                                패턴입니다. 면접 준비와 상관 없이 패턴에 익숙해지도록 좀 더 깊게 공부하는 것도 좋을 것 같아요.

                                                👉 예전에 올린 &lt;자주 보는 개발 설계 패턴 19가지&gt; 글도 함께 읽으면 좋을 것 같습니다.

                                                1. API Gateway Pattern

                                                모든 클라이언트 요청에 단일 진입점 역할을 하는 API Gateway는 마이크로서비스 액세스를 단순화하여 클라이언트와 서비스 간의 원활한 커뮤니케이션을
                                                제공한다.

                                                2. Service Discovery Pattern

                                                마이크로서비스의 복잡한 설계를 쉽게 탐색할 수 있도록 도와준다. 서비스 간 원활한 커뮤니케이션을 보장하고 수동 컨피규레이션의 필요성을 줄일 수 있다.
                                                클라이언트 측 디스커버리(client-side discovery)와 서버 측 디스커버리(server-side discovery)라는 두 가지 주요 접근 방식이
                                                수 있다.

                                                3. Circuit Breaker Pattern

                                                서비스 내 실패 모드를 모니터링 하고 장애가 발생한 서비스에 요청이 도달하는 것을 막음으로써 전체 시스템이 붕괴하는 것을 막는다.

                                                4. Load Balancing Pattern

                                                대량의 트래픽이 발생할 수록 서비스간 트래픽을 분산하도록 하는 패턴이다. 특정 서비스만 대부분의 요청을 프로세스하면 성능 저하 및 운영 중단이 발생할 수
                                                있다. 로드 밸런싱에는 round-robin, least connections, and weighted round-robin와 같은 알고리즘이 사용된다.

                                                5. Bulkhead Pattern

                                                서비스와 리소스를 분리하여 특정 서비스에서 장애가 발생해도 전체 시스템이 다운되지 않도록 하는 패턴이다. 이 패턴 구현의 실제 예로는 AWS Lambda 함수
                                                리소스 할당 및 데이터베이스의 커넥션 풀링(connection pooling)이 있다.

                                                6. CQRS Pattern

                                                서비스의 Read와 Write 작업을 구분하여 마이크로서비스의 성능과 확장성을 증가할 수 있는 패턴이다.

                                                7. Event-Driven Architecture Pattern

                                                이벤트를 활용하여 서비스 간 이벤트를 트리거하여 실시간 응답을 지원하고 서비스 간의 느슨한 커플링을 촉진한다. 이벤트를 트리거로 활용함으로써 서비스 간의
                                                직접적인 의존성을 최소화하여 유연성을 높이고 시스템을 보다 쉽게 진화시킬 수 있다.

                                                8. Saga Pattern

                                                분산 트랜잭션을 처리할 수 있는 안정적인 솔루션을 제공하여 서비스의 자율성을 유지하면서 데이터 일관성을 보장하는 패턴이다.

                                                9. Retry Pattern

                                                장애 완화 또는 극복을 위해 실패한 작업을 retry하는 패턴이다. Retry 방법은 최대 재시도 횟수, 재시도 사이의 지연 및 exponential
                                                backoff와 같은 요소를 포함해야 한다.

                                                10. Backends for Frontends Pattern (BFF)

                                                각 프런트 엔드에 당 전용 백엔드 서비스를 생성하여 각 플랫폼에 맞는 최적의 성능과 유저 경험을 보장하는 패턴이다.

                                                11. Sidecar Pattern

                                                자율성을 해치지 않고 마이크로서비스에 기능을 추가할 수 있는 설계 패턴이다. 서비스에 추가 구성 요소를 연결해서 핵심 서비스를 변경하지 않고 모듈식 기능을
                                                제공할 수 있도록 한다.

                                                12. Strangler Pattern

                                                모놀리식 아키텍처를 점차적으로 마이크로서비스를 기반으로 하는 아키텍처로 리스크 없이 바꿀 수 있게 하는 설계 패턴이다.

                                                👉 원문 내용을 간단하게 정리했습니다. 도표나 추가 정보가 필요하신 분은 아래 원문을 참조해 주세요.

                                                🪴 함께 읽으면 좋은 글:

                                                자주 보는 개발 설계 패턴 19가지
                                                https://careerly.co.kr/comments/78185

                                                개발자 연봉 두배로 뛰는 면접 준비법
                                                https://careerly.co.kr/comments/85260

                                                면접과 설계에 필요한 분산 시스템의 주요 특성
                                                https://careerly.co.kr/comments/83900</p>
                                        </div>
                                        <p class="tw-text-xs tw-text-slate-400">답변 3 • 조회수 400회</p>
                                    </div>
                                </div>
                            </div>
                    </a>
                    <a class="
                    tw-flex tw-gap-2 tw-px-3 tw-py-5
                    tw-cursor-pointer hover:tw-bg-slate-50
                " rel="noreferrer" href="/comments/86269?from=trends&amp;order=2">
                            <div class="tw-flex tw-flex-col tw-items-center tw-gap-2">
                                <p class="tw-w-10 tw-font-bold tw-text-slate-900 tw-text-center tw-leading-none"
                                    style="font-size: 28px;">2</p>
                                <p class="tw-text-xs tw-text-slate-400">—</p>
                            </div>
                            <div class="tw-flex-1 tw-px-1">
                                <div class="tw-mb-4 tw-flex tw-gap-3"><img
                                        class="tw-border tw-border-solid tw-border-slate-200 tw-rounded-full tw-w-9 tw-h-9 tw-bg-slate-200 tw-object-cover"
                                        src="https://publy-cdn.s3.ap-northeast-2.amazonaws.com/user-uploaded/87744/2022.02/20220204063510.jpeg"
                                        alt="">
                                    <div>
                                        <p class="tw-font-bold tw-text-sm tw-text-slate-900">asbubam</p>
                                        <p class="tw-text-xs tw-text-slate-400">당근마켓 SRE팀</p>
                                    </div>
                                </div>
                                <div class="tw-flex tw-gap-3">
                                    <div class="tw-flex-1 tw-flex tw-flex-col tw-gap-4">
                                        <div class="tw-flex-1">
                                            <p class="tw-text-slate-900 tw-line-clamp-2" style="overflow-wrap: anywhere;"><span
                                                    class="tw-font-bold">사이드 프로젝트에 사용하기 좋은 upstash.com 서비스</span><span
                                                    class="tw-text-slate-300">&nbsp;&nbsp;|&nbsp;&nbsp;</span>어제 오랜만에 만난 다른 팀 동료가 몇가지
                                                서비스를 추천해주었는데,

                                                혹시 개인 프로젝트를 만들게 되면 기억해두려고 커리어리에 정리해봐요.

                                                우선
                                                https://upstash.com/ 라는 사이트의 Serverless Data 서비스인데요.

                                                Redis, Kafka, 그리고 메시지큐&amp;스케쥴러 기능의 QStash라는 서비스를 SaaS 형태로 사용할 수 있어요.

                                                Free플랜으로도 개인프로젝트 용으로 쓰기에는 사양이 충분해서, 개인 프로젝트에 Redis나 Kafka를 써보고 싶다면 꼭 써보게 될 것 같아요. 굉장히
                                                사용하기 편하다는 동료의 추천!

                                                QStash에 대해서는 https://upstash.com/blog/qstash-announcement 글에 좀 더 자세히 설명되어 있어요.

                                                그리고 RDB가 필요하다면, PostgreSQL DB를 제공하는 https://supabase.com/ 를 최근에 많이 들었는데, MySQL 서버를 제공하는
                                                https://planetscale.com/ 도 꽤 괜찮다고 해요.

                                                위에서 언급한 서비스들이, 모두 Free플랜으로 괜찮은 사용량을 제공하기 때문에 한번씩 꼭 경험해보면 좋겠다고 생각했어요.

                                                서비스 배포에는 늘 우왕굳! 칭찬만 들었던 https://fly.io/ 나 https://vercel.com/ 도 경험해보고 싶네요.</p>
                                        </div>
                                        <p class="tw-text-xs tw-text-slate-400">답변 2 • 조회수 250회</p>
                                    </div>
                                </div>
                            </div>
                    </a>
                    <a class="
                    tw-flex tw-gap-2 tw-px-3 tw-py-5
                    tw-cursor-pointer hover:tw-bg-slate-50
                " rel="noreferrer" href="/comments/85802?from=trends&amp;order=3">
                            <div class="tw-flex tw-flex-col tw-items-center tw-gap-2">
                                <p class="tw-w-10 tw-font-bold tw-text-slate-900 tw-text-center tw-leading-none"
                                    style="font-size: 28px;">3</p>
                                <p class="tw-text-xs tw-text-slate-400">—</p>
                            </div>
                            <div class="tw-flex-1 tw-px-1">
                                <div class="tw-mb-4 tw-flex tw-gap-3"><img
                                        class="tw-border tw-border-solid tw-border-slate-200 tw-rounded-full tw-w-9 tw-h-9 tw-bg-slate-200 tw-object-cover"
                                        src="https://publy-cdn.s3.ap-northeast-2.amazonaws.com/user-uploaded/75341/2022.06/487ed7472ea70328fb29c27cd97befb76a95c377e79646d2a530e6cc67259294.jpeg"
                                        alt="">
                                    <div>
                                        <p class="tw-font-bold tw-text-sm tw-text-slate-900">이다니엘</p>
                                        <p class="tw-text-xs tw-text-slate-400">Software Engineer @ Google</p>
                                    </div>
                                </div>
                                <div class="tw-flex tw-gap-3">
                                    <div class="tw-flex-1 tw-flex tw-flex-col tw-gap-4">
                                        <div class="tw-flex-1">
                                            <p class="tw-text-slate-900 tw-line-clamp-2" style="overflow-wrap: anywhere;"><span
                                                    class="tw-font-bold">Discord팀이 조 단위 메세지를 DB에 저장하는 방법</span><span
                                                    class="tw-text-slate-300">&nbsp;&nbsp;|&nbsp;&nbsp;</span>Discord는 매일 수백만의 유저가 작성하는
                                                수십억의 메시지를 저장한다. 누적 조 단위의 메시지를 저장하기 위해 Discord 개발팀은 어떤 DB 기술을 사용할까?

                                                → Discord 개발팀이 처음 선택한 DB는 MongoDB였다. 하지만 시간이 지나 유저와 데이터 양이 가하급수적으로 늘며 MongoDB의 한계를 느끼고,
                                                Cassandra로 전환하게 되었다.

                                                → Cassandra 클러스터가 150개 이상의 노드로 커지면서 운영과 성능 문제가 많이 발생했다. 특히, 특정 노드에서 쿼리가 몰리는 문제 (hot
                                                partition)가 발생 시 개발자가 직접 노드를 조정해야 하는 번거로움이 생겼다.

                                                → 이런 상황에서 Discord 팀은 Cassandra와 호환되는 ScyllaDB의 발전을 주목하게 되었다. Discord 개발팀이 저장하는 메시지 이외의
                                                다른 데이터를 새로운 ScyllaDB 클러스터로 이전하면서 그 성능과 안정성을 검증했고, 만족스러운 결과를 얻었다.

                                                → 하지만 가장 큰 데이터인 메시지를 ScyllaDB로 이전하기 위해서는 많은 준비 작업이 필요했다. 그 중 가장 중요한 요소는 "Data Service"의
                                                개발이었다. Discord 팀이 선호하는 Rust로 작성된 이 서비스는 DB의 부하를 줄이기 위해 데이터 요청을 병합하는 (request
                                                coalescing)등 여러 기술을 적용했다.

                                                → "Data Service"의 개발로 hot partition 문제에 어느정도 보호를 받게 되었지만, Cassandra의 한계를 (예: GC 튜닝) 계속
                                                느끼게 되었다. 700TB가 넘는 DB를 이전하기 위한 프로그램을 새로 작성하고(Rust!), 약 10일간의 작업 끝에 모든 데이터를 ScyllaDB
                                                클러스터로 이전하는데 성공했다.

                                                → 170개가 넘는 노드를 가진 Cassandra 클러스터에서 70개 조금 넘는 노드를 가진, 더 효율적인 ScyllaDB 클러스터로 전환하며, 장애 발생
                                                빈도가 줄었고 쿼리 성능도 개선되었다. 개발팀은 1년이 지난 지금까지도 아주 만족하고 있다고 한다.

                                                https://discord.com/blog/how-discord-stores-trillions-of-messages</p>
                                        </div>
                                        <p class="tw-text-xs tw-text-slate-400">답변 3 • 조회수 5회</p>
                                    </div>
                                </div>
                            </div>
                    </a>
                    <a class="
                    tw-flex tw-gap-2 tw-px-3 tw-py-5
                    tw-cursor-pointer hover:tw-bg-slate-50
                " rel="noreferrer" href="/comments/85161?from=trends&amp;order=4">
                            <div class="tw-flex tw-flex-col tw-items-center tw-gap-2">
                                <p class="tw-w-10 tw-font-bold tw-text-slate-900 tw-text-center tw-leading-none"
                                    style="font-size: 28px;">4</p>
                                <p class="tw-text-xs tw-text-slate-400">—</p>
                            </div>
                            <div class="tw-flex-1 tw-px-1">
                                <div class="tw-mb-4 tw-flex tw-gap-3"><img
                                        class="tw-border tw-border-solid tw-border-slate-200 tw-rounded-full tw-w-9 tw-h-9 tw-bg-slate-200 tw-object-cover"
                                        src="https://publy-cdn.s3.ap-northeast-2.amazonaws.com/user-uploaded/404049/2022.01/20220110133751.jpeg"
                                        alt="">
                                    <div>
                                        <p class="tw-font-bold tw-text-sm tw-text-slate-900">서지연</p>
                                        <p class="tw-text-xs tw-text-slate-400">개발자</p>
                                    </div>
                                </div>
                                <div class="tw-flex tw-gap-3">
                                    <div class="tw-flex-1 tw-flex tw-flex-col tw-gap-4">
                                        <div class="tw-flex-1">
                                            <p class="tw-text-slate-900 tw-line-clamp-2" style="overflow-wrap: anywhere;"><span
                                                    class="tw-font-bold">GitHub Copilot 대체제 5가지</span><span
                                                    class="tw-text-slate-300">&nbsp;&nbsp;|&nbsp;&nbsp;</span>이제 코딩 친구를 떠나 코딩 선생님이 되어버린
                                                코파일럿! 하지만 어째뜬 유로 서비스인만큼 달마다 계속 돈은 나가고, ChatGPT 유료까지 해서 개발하는데 드는 고정비용이 점점 늘어나고 있습니다.
                                                코파일럿도 좋지만 다른 좋은 코딩 AI들도 많이 생겨나고 있는데요. GitHub Copilot을 대체할 수 있는 또 다른 AI 서비스들 5가지를 소개합니다.

                                                1. Codeium
                                                - VSCode, IntelliJ와 같은 젯브레인 IDE 등에서 통합 가능하며, 여러 코드 제안을 보여주어 next, previous 움직여 가며 추천되는
                                                코드를 확인해볼 수 있습니다.
                                                - 장점
                                                - 다양한 프로그래밍 언어 지원
                                                - 빠른 제안 및 여러 가지 코딩 패턴 간 전환 기능 제공

                                                2. CodeGeex AI
                                                - 코드 제안, 자동 완성 기능 및 코드 번역을 제공
                                                - 20가지 프로그래밍 언어의 대규모 코드 저장소를 기반으로 동작하며, 코드를 다른 언어로 변환할 수도 있습니다.

                                                3. Code Whisperer
                                                - AWS에서 제공하는 AI 기반 프로그래밍 도구로, 자동완성, 코드 문서화, 리팩토링 등의 기능을 제공합니다.
                                                - AWS 리소스에 쉽게 접근 가능한 AWS툴킷 확장 기능을 제공합니다.

                                                4. Tabnine
                                                - 다양한 IDE와의 호환, 사용자의 코딩 스타일에 맞게 맞춤 설정 가능
                                                - Tabnine는 오직 오픈 소스 및 허용되는 코드를 사용하여 알고리즘을 훈련하기 때문에 사용자의 코드가 안전하게 유지됩니다.
                                                - 장점
                                                - 다음 코드 줄을 예측하고 제안해주는 기능을 갖춤
                                                - 코더들 사이에서 유명한 프로그래밍 언어부터 기술 산업에서 더욱 사용되는 언어까지 거의 모든 프로그래밍 언어를 지원
                                                - 단점
                                                - 제안이 부정확할 때가 있음
                                                - 입문자에게는 사용이 어려울 수 있음
                                                - 에디터에서 작성되는 코드를 학습하기 때문에 코드가 종종 서로 혼돈이 될 수 있음

                                                5. Blackbox
                                                - VSCode 익스텐션
                                                - 에디터에서 바로 모든 코딩 질문을 할 수 있으며, 질문을 코드로 변환해주는 기능도 있습니다.

                                                https://blog.openreplay.com/five-alternatives-to-github-copilot/</p>
                                        </div>
                                        <p class="tw-text-xs tw-text-slate-400">답변 1 • 조회수 200</p>
                                    </div> 
                                </div>
                            </div>
                    </a>
                    <a class="
                    tw-flex tw-gap-2 tw-px-3 tw-py-5
                    tw-cursor-pointer hover:tw-bg-slate-50
                " rel="noreferrer" href="/comments/85626?from=trends&amp;order=5">
                            <div class="tw-flex tw-flex-col tw-items-center tw-gap-2">
                                <p class="tw-w-10 tw-font-bold tw-text-slate-900 tw-text-center tw-leading-none"
                                    style="font-size: 28px;">5</p>
                                <p class="tw-text-xs tw-text-slate-400">—</p>
                            </div>
                            <div class="tw-flex-1 tw-px-1">
                                <div class="tw-mb-4 tw-flex tw-gap-3"><img
                                        class="tw-border tw-border-solid tw-border-slate-200 tw-rounded-full tw-w-9 tw-h-9 tw-bg-slate-200 tw-object-cover"
                                        src="https://publy-cdn.s3.ap-northeast-2.amazonaws.com/user-uploaded/514975/2023.04/68d8500c57865344e81cf225ed2f8998913b5cd95065e5c6e0807968016545e6.jpeg"
                                        alt="">
                                    <div>
                                        <p class="tw-font-bold tw-text-sm tw-text-slate-900">황민호 (로빈)</p>
                                        <p class="tw-text-xs tw-text-slate-400">Kakao General Developer</p>
                                    </div>
                                </div>
                                <div class="tw-flex tw-gap-3">
                                    <div class="tw-flex-1 tw-flex tw-flex-col tw-gap-4">
                                        <div class="tw-flex-1">
                                            <p class="tw-text-slate-900 tw-line-clamp-2" style="overflow-wrap: anywhere;"><span
                                                    class="tw-font-bold">Spring Webflux 와 MVC 프로젝트의 유형 10가지</span><span
                                                    class="tw-text-slate-300">&nbsp;&nbsp;|&nbsp;&nbsp;</span>================================
                                                Spring Webflux가 유리한 프로젝트의 유형 10가지
                                                ================================

                                                1. 고효율 스트리밍 서비스
                                                웹플럭스는 리액티브 스트림 스펙을 준수하므로, 백프레셔(Backpressure)를 통해 스트림의 효율성을 극대화할 수 있습니다.

                                                2. 대규모 실시간 데이터 처리
                                                리액티브 모델은 데이터 처리량이 많고 실시간 응답이 필요한 경우에 매우 효과적입니다.

                                                3. 마이크로서비스 아키텍처
                                                각각의 서비스가 독립적으로 확장 가능해야 하는 환경에서는 리액티브 시스템이 유용합니다.

                                                4. 이벤트 주도 프로젝트
                                                비동기식 및 non-blocking 방식의 처리로 인해 이벤트 주도 시스템에서는 WebFlux가 잘 맞습니다.

                                                5. 서버 푸시 기반 애플리케이션
                                                Server-sent events나 WebSocket 같은 기술을 통해 클라이언트에 서버로부터의 실시간 업데이트가 필요한 애플리케이션에 유리합니다.

                                                6. 로드 밸런싱이 필요한 서비스
                                                높은 트래픽에 대응하기 위해 로드 밸런싱이 필요한 서비스에서는 더 효과적인 리소스 사용이 가능합니다.

                                                7. 클라우드 기반 서비스
                                                클라우드 환경에서는 컴퓨팅 리소스를 효율적으로 활용해야 하므로 리액티브 프로그래밍이 유리합니다.

                                                8. API 게이트웨이
                                                여러 백엔드 서비스로부터 데이터를 집계하고 반환하는 API 게이트웨이에서는 비동기 및 non-blocking 처리를 통해 더 효율적인 응답 시간을 달성할 수
                                                있습니다.

                                                9. 비동기 메시징 어플리케이션
                                                실시간 채팅이나 알림 등의 비동기 메시징 시스템에서는 WebFlux의 비동기 처리 능력이 장점으로 작용합니다.

                                                10. IoT 시스템
                                                수많은 IoT 디바이스로부터의 데이터를 실시간으로 처리해야 하는 IoT 시스템에서 리액티

                                                ==============================
                                                Spring MVC 가 적합한 프로젝트의 유형 10가지
                                                ==============================

                                                1. 단순 CRUD 작업이 주인 프로젝트
                                                데이터베이스와의 간단한 상호작용이 주인 경우, 리액티브 프로그래밍의 복잡성이 오히려 부담스러울 수 있습니다.

                                                2. 전통적인 블로킹 I/O가 주로 사용되는 프로젝트
                                                블로킹 I/O 작업이 많은 경우, 리액티브 프로그래밍의 장점을 충분히 활용하지 못할 수 있습니다.

                                                3. 동기식 처리가 필요한 프로젝트
                                                동기식 처리가 필요한 로직이 많은 경우, 비동기적인 리액티브 프로그래밍은 코드를 복잡하게 만들 수 있습니다.

                                                4. 리소스가 제한적인 프로젝트
                                                리액티브 프로그래밍은 메모리와 CPU를 효율적으로 사용하지만, 이로 인해 가비지 컬렉션에 더 많은 부하가 가해질 수 있습니다. 리소스가 제한적인 경우, 이는
                                                고려해야 할 부분입니다.

                                                5. 단일 스레드 환경 프로젝트
                                                리액티브 프로그래밍은 멀티스레드 환경에서 가장 큰 이점을 제공합니다. 단일 스레드 환경에서는 그 이점이 크게 나타나지 않을 수 있습니다.

                                                6. 레거시 시스템과의 통합이 필요한 프로젝트
                                                이미 구축된 블로킹 형식의 레거시 시스템과 통합이 필요한 경우, 리액티브 시스템은 통합을 복잡하게 만들 수 있습니다.

                                                7. 리액티브 프로그래밍에 경험이 부족한 팀
                                                리액티브 프로그래밍은 복잡하고 학습 곡선이 길어, 팀이 이에 익숙하지 않은 경우 프로젝트의 진행을 방해할 수 있습니다.

                                                8. 코드 디버깅이 많이 필요한 프로젝트
                                                리액티브 프로그래밍의 비동기 및 병렬 처리 특성은 코드의 디버깅을 어렵게 만듭니다.

                                                9. 트랜잭션 처리가 필요한 프로젝트
                                                일반적인 RDBMS 기반의 트랜잭션 처리는 리액티브 모델과 잘 맞지 않을 수 있습니다.

                                                10. 반응성이 크게 중요하지 않은 프로젝트
                                                대량의 요청을 빠르게 처리하거나, 높은 확장성이 필요하지 않은 프로젝트에서는 리액티브 프로그래밍의 복잡성이 그 이점을 상회할 수 있습니다.</p>
                                        </div>
                                        <p class="tw-text-xs tw-text-slate-400">좋아요 102 • 저장 212</p>
                                    </div>
                                </div>
                            </div>
                    </a>
                    
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
                <a href="https://www.tukorea.ac.kr/tukorea/index.do#none"
                    class="mr-4 hover:underline md:mr-6 ">TUKOREA</a>
            </li>
        </ul>
        <span class="text-sm text-gray-500 sm:text-center dark:text-gray-400">© 2023 <a
                href="https://www.tukorea.ac.kr/tukorea/index.do#none" class="hover:underline">TUKOREA</a>. All Rights
            Reserved.</span>
    </div>
</footer>

<!--=============== MAIN JS ===============-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>
</body>

</html>