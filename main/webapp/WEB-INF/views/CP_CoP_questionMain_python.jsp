<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Hi+Melody&family=Nanum+Gothic:wght@700&display=swap">
  <title>Coyongyong_questionMain_python</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/views/CP_CoP_front/CP_CoP_questionMain_python.css">
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
        <a href="#"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/logo.png"></a>
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

    <!-- ���ϰ� �����غ�����! �� �κ� -->
    <div class="explanation">
      <div class="explanation_content">
        <font size="5">
          <h1>���ϰ� �����غ�����!</h1>
          <h3>�ΰ����� ê���� ����ڵ��� ������ ���<br>�ñ��ߴ� ������ ���� �亯���ݴϴ�.</h3>
        </font>
      </div>
      <img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/explanation.png" id="explanation_img">
    </div>

    <!-- 1������ ��� -->
    <!-- �ٸ� ������ ���� �� 2������ �ö�´ٴ��� �ؾ���. -->
    <div class="level1">
      <div class="questions">
        <head class="level"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/python_1.png" width="120px" height="120px"></head>
        <!-- ���� ���� �ִ� ���ڴ� ���� ���� �����ͼ� ��Ÿ���� �ɵ� -->
        <div class="one_question">
          <a class="question" href="CP_CoP_oneQuestion.html">
            ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
          </a>
          <div class="question_bar">
            <a class="answer">�亯100��</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
          </a>
          <div class="question_bar">
            <a class="answer">�亯100��</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
            ����3<br>�����̶� ������ �ǳ�?
          </a>
          <div class="question_bar">
            <a class="answer">�亯100��</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          ����2<br>&nbsp;
          </a>
          <div class="question_bar">
            <a class="answer">�亯100��</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
          </a>
          <div class="question_bar">
            <a class="answer">�亯100��</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
      </div>

      <div class="questions" id="question_plus">
        <div class="one_question">
          <a class="question" href="#">
          ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
          </a>
          <div class="question_bar">
            <a class="answer">�亯100��</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?�� ��� ��� �Ǵ�? Ȥ��? �ٵ� �̷��� ������ �� ��찡 ������?
          </a>
          <div class="question_bar">
            <a class="answer">�亯100��</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
          </a>
          <div class="question_bar">
            <a class="answer">�亯100��</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
          </a>
          <div class="question_bar">
            <a class="answer">�亯100��</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
        <div class="one_question">
          <a class="question" href="#">
          ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
          </a>
          <div class="question_bar">
            <a class="answer">�亯100��</a>
            <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
          </div>
        </div>
      </div>
      <a href="#" class="question_plus">���� ������</a>
    </div>

    <!-- �ι�° ���� --------------------------------------->
    <div class="questions">
      <head class="level"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/python_2.png" width="120px" height="120px"></head>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
    </div>
    <a href="#" class="question_plus" id="plus">���� ������</a>

    <!-- ����° ���� ------------------------------------->
    <div class="questions">
      <head class="level"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/python_3.png" width="120px" height="120px"></head>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
    </div>
    <a href="#" class="question_plus" id="plus">���� ������</a>

    <!-- �׹�° ���� ----------------------------------------->
    <div class="questions">
      <head class="level"><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/python_4.png" width="120px" height="120px"></head>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
        ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯100��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="30px" height="30px"></a>
        </div>
      </div>
      <div class="one_question">
        <a class="question" href="#">
          ����2<br>&nbsp;��������<br>��� ��¿����?<br>�̷��Ա��� ��� ��� �ɲ���? ���ΰ� ��� ��� �ɲ���?<br>�� ��� ��� ���� �Ѿ��? ��¿���ı�~ �� �����ϴ�...? ������ �����ϴ�..? �� ������ �ȵƾ� ������ ���� �̷��� �����?
        </a>
        <div class="question_bar">
          <a class="answer">�亯~��</a>
          <a href=""><img src="${pageContext.request.contextPath}/resources/views/CP_CoP_front/icon/help.png" width="5px" height="5px"></a>
        </div>
      </div>
    </div>
    <a href="#" class="question_plus" id="plus">���� ������</a>
  </main>
</body>
</html>