<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Nanum+Gothic:wght@700&display=swap">
  <title>koyongyong_Main</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/CP_CoP_Main.css">
</head>

<body>
  <main>
    <!-- js�� �α��� �Ǿ��ִ��� Ȯ�� �ް� ��� ó���ϴ°� �ֱ�. -->
    <!-- �ΰ�� �α���, ȸ������ (�α��� �ȵǾ����� ��) -->
    <!-- �α��� �Ǿ������� ���ó�� -->
    <div class="topbar">
      <div class="logo"><br>
        <a href="CP_CoP_Main.html"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png"></a>
      </div>
      <div class="loginbar_search">
        <div class="search">
          <input id="search" type="text" placeholder="�˻��� �Է�">
          <a href="#"><img id=search_img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/magnifying.png" width="20px" height="20px"></a>
        </div>
        <div class="loginbar">
          <a href="https://naver.com" id=mainLogin>login</a>
          &nbsp;|&nbsp;
          <a href="https://naver.com" id=makeAccount>ȸ������</a>
        </div>
      </div>
    </div>

    <!-- �ΰ�� ����, �α׾ƿ� (�α��� �Ǿ����� ��) -->
    <!-- �α��� �ȵǾ������� ���ó�� -->
    <!-- <div class="topbar">
      <div class="logo"><br>
        <a href="#"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png">koyongyong</a>
      </div>
      <div class="loginbar_search">
        <div class="search">
          <input id="search" type="text" placeholder="�˻��� �Է�">
          <a href="#"><img id=search_img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/magnifying.png" width="20px" height="20px"></a>
        </div>
        <div class="loginbar_login" >
          <a href="https://naver.com" id=mainLogin><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/C_3.png" width="35px" height="35px"></a>
          &nbsp;|&nbsp;
          <a href="https://naver.com" id=makeAccount><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logout.png" width="30px" height="30px"></a>
        </div>
      </div>
    </div> -->

    <div class="content"></div>
    
    <!-- �޴��� ��ư -->
    <div class="menubar">
      <div>
        <a href="CP_CoP_questionMain.html" id="main_question_btn" class="menubtn">����</a>
        <div class="dropdown_menubar" id="menubar_left">
          <li><a href="#">Java</a></li>
          <li><a href="#">Python</a></li>
          <li><a href="#">C++</a></li>
          <li><a href="#">C#</a></li>
        </div>
      </div>
      <div>
        <a href="#" id="main_study_btn" class="menubtn">��������</a>
        <div class="dropdown_menubar">
          <li><a href="#">���� �ۼ�</a></li>
          <li><a href="#">�ٸ� ����� ����</a></li>
        </div>
      </div>
      <div>
        <a href="#" id="main_coding_btn" class="menubtn">�ڵ��׽�Ʈ</a>
        <div class="dropdown_menubar" id="menubar_right">
          <li><a href="#">������</a></li>
          <li><a href="#">��������</a></li>
          <li><a href="#">��εǳ�</a></li>
          <li><a href="#">��</a></li>
        </div>
      </div>
    </div>

    <!-- ��ȸ�� ���� ���� ���� 1, 2, 3�� ��� -->
    <a href="#" class="first">
      <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_first.png" width="65px" height="65px" id="medal">
      <font size=5>�ۼ��� : </font>
      <font size=5>
        1�� ���� ���� :
      </font>
      <font size=4>
        &nbsp;�� ���� ������ ��� ��� ���� �����غ���? �ϴ� ��� �ߴ�? �� ���������? �ɲĸ� �� ���������~ �̰� ���ٵǸ� ��� ����? �ñ��ѵ� �󸶳� ������ ��¥ ��
      </font>
      <font size=5>��ȸ�� : ~ </font>
    </a>
    <a href="#" class="second">
      <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_second.png" width="70px" height="70px" id="medal">
      <font size=5>�ۼ��� : </font>
      <font size=5>
        2�� ���� ���� :
      </font>
      <font size=4>
        &nbsp;�� ���� ������ ��� ��� ���� �����غ���? �ϴ� ��� �ߴ�? �� ���������? �ɲĸ� �� ���������~
      </font>
      <font size=5>��ȸ�� : ~ </font>
    </a>
    <a href="#" class="third">
      <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/medal_third.png" width="70px" height="70px" id="medal">
      <font size=5>�ۼ��� : </font>
      <font size=5>
        3�� ���� ���� :
      </font>
      <font size=4>
        &nbsp;�� ���� ������ ��� ��� ���� �����غ���? �ϴ� ��� �ߴ�? �� ���������? �ɲĸ� �� ���������~
      </font>
      <font size=5>��ȸ�� : ~ </font>
    </a>
  </main>
</body>
</html>
