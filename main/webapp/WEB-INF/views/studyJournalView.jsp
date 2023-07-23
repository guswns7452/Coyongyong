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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Nanum+Gothic:wght@700&display=swap">

<!-- 코드 스타일 시트 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.6/styles/rainbow.min.css"
	integrity="sha512-lg2nQxToY9UYwWsEYxv+J5ei+JhxtTKFXMcd5BKNerj7EPrSvqRxHWHyQN8ejFSP3gUtkEMgik7FUT5pGl7x4g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.6/highlight.min.js"></script>
<script>
	hljs.initHighlightingOnLoad();
</script>
<style>
pre {
	padding: 0px;
}
</style>

<!-- flowbite 설정 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.css"
	rel="stylesheet" />

<link rel="icon"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png" />
<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/yongyong.png" />
<title>CoyongYong</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/studyJournalView.css">
</head>



<body>
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
					<li><a href="/study/list"
						class="block py-2 pl-3 pr-4 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500">공부일지</a>
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

	<main>
		<div class="top">
			<div clas="toptop">
				<div>
					<figure class="max-w-screen-md title">
						<figcaption class="flex items-center mt-6 space-x-3">
							<img class="w-10 h-10 rounded-full"
								src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/appliance-repair.png"
								alt="profile picture">
							<div
								class="items-center divide-x-2 divide-gray-300 dark:divide-gray-700">
								<cite class="pr-3 font-medium text-gray-900 dark:text-white">${study.customerID}</cite>
							</div>
						</figcaption>
					</figure>
					<div class="flex justify-between">
						<div>
							<div class="title">
								<font size=5> ${study.studyTitle} </font>
							</div>
							<div class="date">
								<font size=2> 작성날짜 : ${study.studyDate} <br> 조회수 :
									${study.studyCount} <br> 좋아요 수 : ${study.goodCount} <br>
								</font>
							</div>
						</div>
						<div>
							<button data-dropdown-toggle="dot_dropdown"
								data-dropdown-placement="bottom" aria-expanded="false">
								<svg class="w-6 h-6 text-gray-800 dark:text-white"
									aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
									fill="currentColor" viewBox="0 0 4 15">
                      <path
										d="M3.5 1.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0Zm0 6.041a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0Zm0 5.959a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0Z" />
                    </svg>
							</button>
						</div>
					</div>
					<div class="study_journal">
						<figure class="max-w-screen-md study_journal_content">
							<div class="content"></div>
							<div class="font-semibold text-gray-900 dark:text-white contents">
								<font size=4> ${study.studyContent} <!--¿## 요약

									<aside>💡 **[Chapter 1]** - 얼리 억세스 법칙 : 완벽함보다 속도로 승부를
										보라. 완벽함을 추구하면 그 시장은 이미 다른 서비스가 장악하고 난 뒤다. - 충동 조절 : 성공하고 싶다면
										충동을 줄이란다. 10-10-10법칙. 의지가 약해지면 10분 후, 10개월 후, 10년 후를 떠올리란다.
										효과가 있는지는 모르겠는데.. ~~그건니가~~ - 기대치 위반 효과 : 사람이 기대가 없을때 서비스?를 주면 더
										좋아함. 환율이 올라서 좌절하고 있는 거래처에 오른만큼 할인해주면 더욱 이용할 것 아닌가. 물가가 오른 이
										시점에 물가가 올랐을 거라고 생각한 경기과기대 학식이 가격이 동결이라서 더 좋아졌자나.. 그런 느낌인거지.
										하지만 다중의 의견을 잘 살피자. - 권위자 편향 : 권위자의 말이 항상 맞는 건 아니다. 새로운 생각을 가져야
										새로운 지각변동을 줄 수 있으니까. 물론 잘 생각하자 - 정보 편향 : 오히려 많은 선택지가 더 나은 판단을
										준다는 착각 (정보 편향). 선택지가 많으면 질린다. 무엇인가를 배울때 모든걸 배우려고 하지 말자. 힘이 빠질
										수도 있다. 최소한의? 적은 정보만으로도 실행하고 난항에 닥치면 그때 공부해도 좋다. - 표면적 인지 : 술
										담배를 줄여라. 건강에도 좋고, 롱런 하려면 필요함. - 사혈 효과 : 사회적 통념에는 모두 이유가 있다. 그
										이유가 필요없어지면 과감히 바꿔야한다. 계속 끊임없이 의심하고 바꾸려고 노력해라. - 성공 보존의 법칙 :
										패배는 굉장히 위축됨. 성공 해본 사람이 성공을 하게 됨. 예시는 스포츠 (환화..?) 그래서 처음에는 목표를
										크게 잡지 말고 자잘한 성공 경험이라도 해보아라. - 손실 회피 : 성공을 위해서는 어느정도의 손해는
										감내해야한다. Deal을 하려면 손해를 보고 미래를 봐야함</aside>
									<aside>💡 **[Chapter 2]** - 부작위 편향 : 아무것도 하지 않으면 아무일도
										일어나지 않는다. - 영역 의존성 : 본인의 최적의 영역이 있을 것이다. 경영과 패션이 분리된 것 만큼.
										한마디로, 잘 못하는 분야는 개입하지 말자 - 크레스피 효과 : 일의 동기부여가 필요하다. “ 왜 일하는가? “
										라는 질문을 던져라 - 군중 심리 : 사람들의 본성을 자극하는 서비스를 출시하라. 만져보고 싶은, 해보고 싶은
										그런 것들. 본인의 것으로 만들어야 하지만, 흔해지면 안된다. - 계획 오류 : 계획을 넉넉히 잡아라. 어짜피
										못한다. - 떠벌림 효과 : 뭔가를 하고 싶다면 주변 사람에게 말해라. 도움을 받을 수 있거나, 동기부여가 될
										수 있다. - 사회적 촉진 : 혼자일때 보다 다른 사람과 함께 일 할때 능률이 오르는 효과, 근데 혼자 해야 더
										잘하는 일의 경우 (발표) 같이 이런 경우는 연습을 해서 익숙해지자. 웅성거리는 영상을 틀어놓고 앞에서 발표를
										한다는지의 연습을 - 프랭클린 효과 : 인간은 나에게 호의를 베푼 사람보다 내가 호의를 베푼 사람들 더
										좋아한다. 친해지고 싶은 사람이 있다면 자문위원이 되어달라고 요청해라. 거절하는 사람은 거의 없고, 오히려
										본인이 인정받는 다고 좋아할 것이다.</aside>
									<aside>💡 **Chapter.03** - 휴리스틱 : 나도 뼈 아픈 실수를 할 수 있고, 덜
										후회하는 것. 인간은 생각보다 합리적이지 않지만, 그때의 최선의 선택이라고 생각하고 빨리 털어내는 것. -
										므두셀라 증후군 : 성공한 사람이 과거의 성공에 취해 발전하지 못하는 경우가 많음. 자존심을 내려놓고 초라한
										현재를 감추려고 과거 성공담만 늘어놓지 말고, 당장 시작할 것 - 허구적 독특성 : 본인을 생각보다 특별한
										사람이라고 인지함(허구적 독특성) 본인을 냉철하게 바라보고 현실을 객관적으로 파악해야 비로소 대응이 가능하다 -
										매몰 비용의 오류 : 더 나빠지기 전에 미리미리 손절하라. 망한 뒤의 비용은 어마무시 할것 - 조명 효과 :
										사람들은 생각보다 다른 사람에게 관심 없지만, 스포트라이트를 받았을때 본인의 능력을 보여준다면 다른 사람들의
										인상에 깊게 남을 것, 그 때를 위해서 실력을 갈고 닦는 것을 추천한다. - 행동 편향 : 아무것도 안할때
										불안함을 느끼는 현상 (행동 편향), 무언가 일이 잘못 되었을때 그냥 행동하기 보다는 잠시 물러서서 그 상황을
										지켜보는게 해답일 수 있다. 내가 간단한 일을 할 때 뭐 어떻게든 되겠지 라고 행동하는 경우가 많은데 일단
										고민하고 과거 경험을 떠올리는 것도 좋은 방법 - 가면 증후군 : 본인의 작업에 대해 과소 평가하고 운이
										좋았다고 판단하는 현상이다. 이 요새는 본인 PR시대, 본인이 한 일은 자랑스럽게 얘기하자. 어짜피 사람들은
										비슷하다. 나의 성과를 부정하지 않고, 나를 지지해 줄 사람들을 곁에 두는 것도 방법이다. - 집단 사고 :
										가장 최악은 리더가 정답을 제시하여, 차단한다면 더 나은 아이디어가 나오지 않을 것. 팀원들이 실수 해도
										용인하여 부드러운 분위기를 만들어서 침묵을 깨야한다.</aside>
									<aside>💡 **Chapter.04** - 습관화, 지각 범주화 : 습관화 66일 알지?
										미루게 된다면 습관이 될 수 없다. 지루한 일을 잘게 쪼갠다면, 더 많은 일을 한 것 같고 성취감을 더 많이
										느끼게 된다. 그리고 요즘 핸드폰이 너무 방해를 하는데 핸드폰이 보상 심리라 그렇다. 다른 보상을 느끼게 하면
										어떨까? 하는 생각이다. - 심사숙고의 함정 : 일이 너무 복잡해지면, 단순하게 생각해보라. 어짜피 가장 중요한
										요소를 기준으로 생각해보면 답이 더 빠르게 나오지 않을까? - 시간의 상대성 : 사람에게 시간은 다 동일하지만,
										그 자투리 시간을 어떻게 효율적으로 활용하는지가 중요한 것 같다. 10분이라는 시간이 굉장히 크기에 이렇게 남는
										시간에 효율적으로 움직이는 건 어떨까? - 지연 행동 : 마감시간을 정하고 현실적인 목표를 정하기. 생각하지
										말고 바로 실천에 옮겨보도록하자. 일을 미루는 것은 좋은 습관은 아니니. - 후광 효과 : 본인의 매력을
										키워보자. 생각보다 첫인상이 좌지우지 하는 것이 많다. - 리커버리 패러독스 : 실수를 했을때 그냥 덮기 보단,
										사과를 제대로 하고, 그 위기를 극복한다면 더 좋은 인상을 심어줄 수 있다. 그냥 덮어버린다면 더 큰 화를
										불러일으킬 것이다. - 자이가르니크 효과 : 구체적인 계획을 짜는 것 만으로도 스트레스를 줄일 수 있다. 심신의
										안정이 있다는 거다. 계획을 짜보다. - 결과 편향 - 고슴도치 딜레마 : 적을 만들지 말고, 적당한 거리를
										유지하라. 사람과의 대화에서 흥분해서 좋을 건 없고, 고슴도치 같은 적당한 관계가 좋다. 또한 눈을 마주치고,
										어떠한 일에 대해 근거를 설명해주고, 경청하고, 의외의 약점을 보이면 호감으로 볼 수 있다.</aside>
									<aside>💡 **Chapter.05** - 열린 인지 공간 : 차라리 연봉을 조금 받고,
										성과급을 받는 것보다. 연봉을 높게 받는 것이 더 나음. 그 이유는 성과급은 조건이 있어 부담이 있을 수 있고,
										확정된 연봉일 때 더 나은 성과를 낼 수 있음. - 마음 이론 : 사람들의 마음을 이끌어 내려면, 사진으로
										호소하는 편이 더 나음. 그리고 사람들의 목적에 따라 마음이 다르기 때문에, 사람들의 마음을 잘 파악해야함. -
										유사성의 원리 : 본인과 공통적인 점을 찯으면 더 호감이 감. 공통점을 찾으려고 노력하자 - 적극적 경청 :
										사실 3분이상 사람의 말을 경청하는 것은 어려움. 그것을 집중해서 말을 이해하는 것이 더 어려움. 또 사람은
										본인 말을 하고 싶어함. 하지만 경청하는 것이 굉장히 중요함. - 전화위복에 대한 환상 : 어려울 때 잘해주면,
										더 열심히 하고자 하는 사람들. 정리해고는 진짜 마지막 카드로 해야함. - 단순 노출 효과 : 단순히 눈에 띄는
										것 만으로도 호감도를 올릴 수 있음. 설득을 하거나 호감이 가는 대상에게 무작정 들이대기 보다, 우연을 가장한
										만남일지라도 자주 마주치는 것부터 하자. 만날 때마다 좋은 인상을 남기면 더 좋음 - 투사 : 본인이 하지도
										못하는 것을 충고하려 하지 마라. 충고하면 더 엇나가고 싶어짐. **자신의 감정, 태도를 다른 사람에게 전이하는
										행위이다**. 부정적 투사는 충고를 하는 경우가 있지만 긍정적 투사는 개개인에게 적합한 서비스를 할 수 있도록
										직원에게 권한을 주어 투사를 하도록 하는 것이다. (편의점 알바가 고객 편의를 위해 맘대로 발주.. 고객 만족)
										- 사회적 태만 : 조별 과제시 많은 팀원들이 참여를 안하는 경우가 있음. 그것은 본인의 공헌도가 잘
										안드러나거나, 결과에 대한 책임이 없기 때문이다. 개개인에게 공헌도나, 책임을 부여해주고, 인원수를 줄이는 것이
										좋음 - 대비효과 & 희소성의 오류 : 조금 만들면, 희소성때문에 소유 욕구가 있음 (원소주,,)</aside>
									<aside>💡 **Chapter.06** - 정박 효과 : 기준점을 세팅을 잘 할것, 연봉
										협상시에 기준점이 있다면 편하자너 - 사회적 비교 편향 : 원래는 본인보다 뛰어난 사람과 일하기를 꺼려함.
										본인이 비교당하기 때문에.. 하지만 그 사람과 일을 해야 배우는 것도 많고, 기업의 성공으로 갈 수 있음 -
										선택의 역설 : 선택지를 줄여도 3가지로 줄여도, 상위 25%를 결정 할 수 있다. 상위 10%는 7가지중 가장
										좋은 걸 선택하면 된다. - 둔필송총의 법칙 : 메모의 중요성. 본인만의 데이터베이스로 만들어라 - 로켓의 법칙
										: 행동하지 않고 후회하는 것 보다 해 보고 후회하는게 낫다. 빠르게 변화하는 로켓에 탑승하는 것 처럼 빠르게
										변화하는 트렌드를 잘 파악해보자. 비록 그것이 작은 스타트업이여도, 빠르게 발전 할 수 있다. - 초두 효과 &
										최신 효과 : 초두 효과 (처음 주어지는 정보에 더 많은 가치를 둠) 좋은 단어는 먼저 말하기 → 발표나 면접도
										첫번째 순서도 괜찮을 지도? / 최신 효과 (나중의 정보에 가치를 둠) → 첫인상과 끝인상이 중요한 이유. -
										능력 착각 : 리더가 되고 싶다면, 리더처럼 행동하기. 타인에 대한 포용, 헌신 배려, 책임감이 필요함.
										타인에게 “저 사람이 리더가 되어야함” 이라는 생각이 있어야함. 그래서 리더가 되고 싶지 않은 사람도 리더가 될
										수 있는데, 리더에 대한 준비를 미리미리 해두라 - 더닝-크루커 효과 : 능력이 뛰어난 사람이 자신의 능력을
										과소평가하는 경향이 있음. 어쨌든 성공하려면, 꾸준한 열정이 있어야 한다.</aside> -->
								</font>
							</div>
							<div id="codeContainer"></div>
							<div style="display: none;" id="innerCode">${question.questionCode}</div>

						</figure>
						<div class="content"></div>
						<div class="like">
							<button type="button"
								class="focus:outline-none text-white bg-blue-400 hover:bg-blue-500 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800"
								id="like">
								<img
									src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/empty_heart.png"
									width="30px" height="30px" class="heart"> 좋아요
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div
			class="w-48 text-gray-900 bg-white border border-gray-200 rounded-lg dark:bg-gray-700 dark:border-gray-600 dark:text-white hidden"
			id="dot_dropdown">
			<button type="button"
				class="relative inline-flex items-center w-full px-4 py-2 text-sm font-medium border-b border-gray-200 rounded-t-lg hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-2 focus:ring-blue-700 focus:text-blue-700 dark:border-gray-600 dark:hover:bg-gray-600 dark:hover:text-white dark:focus:ring-gray-500 dark:focus:text-white">
				공유하기 📩</button>
			<button type="button"
				class="relative inline-flex items-center w-full px-4 py-2 text-sm font-medium border-b border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-2 focus:ring-blue-700 focus:text-blue-700 dark:border-gray-600 dark:hover:bg-gray-600 dark:hover:text-white dark:focus:ring-gray-500 dark:focus:text-white">
				신고하기 📢</button>

		</div>
	</main>


	<script
		src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/studyJournalView.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.7.0/flowbite.min.js"></script>

	<!-- 코드 스타일 시트 -->
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/styles/hybrid.min.css">
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/highlight.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/highlightjs-line-numbers.js/2.7.0/highlightjs-line-numbers.min.js"></script>

	<script>
		hljs.initHighlightingOnLoad();
	</script>
	<script>
		hljs.initLineNumbersOnLoad();
	</script>
</body>

</html>