<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 창</title>
    <link href="<c:url value='/css/join.css'/>" rel="stylesheet" type="text/css">
    <link href="<c:url value='/css/wave.css'/>" rel="stylesheet" type="text/css">

    <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
    <!-- Toastr -->
    <link href="<c:url value='/css/toastr.min.css'/>" rel="stylesheet" type="text/css">
    <script src="<c:url value='/js/toastr.min.js'/>"></script>
    
    <script src="<c:url value='/js/join.js'/>"></script>
    <script src="<c:url value='/js/memIdCheck.js'/>"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>

    <!-- -->

    <section>
        <div id="joinBox" class="joinForm">
            <form name="joinForm" id="joinForm"  method="post">
                <table>
                    <tr>
                        <td class="title">
                        <h1> 회원가입 </h1>
                        <h4>회원정보입력</h4>
                        <span class="point-color">
                            <small>
                                <em style="margin-left: 30px;">*</em> 는 필수 입력 항목입니다.
                            </small>
                        </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn">
                            <em class="point-color">*</em>
                            <label for="memId">아이디</label>
                        </td>
                        <td class="Cn2">
                            <input type="text" name="memId" id="memId" class="int_id" placeholder="아이디를 입력해주세요."
                                onfocus="this.placeholder=''" onblur="this.placeholder='아이디를 입력해주세요.'">
                            <input class="IdCheckBtu" type="button" value="ID중복체크" id="idCheck">
                            <div id="idError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn">
                            <em class="point-color">*</em>
                            <label for="password">비밀번호</label>
                            <dic class="tooltip"><i class="fas fa-exclamation-triangle"></i>
                                <div class="tooltip-text">
                                    <b>
                                        비밀번호 입력 시 아래 규칙을 참고해주세요!
                                    </b>
                                    <p>
                                        1. 아이디와 비밀번호가 같을 수 없습니다.
                                    </p>
                                    <p>
                                        2. 비밀번호는 영문자,숫자,특수기호의 조합으로
                                        <b>8~15자리</b>를 사용해야합니다.
                                    </p>
                                    <p>
                                        3. 특수기호는 <b>! @ # $ % ^ * ? _ ~</b>만 사용 가능합니다.
                                    </p>
                                </div>
                            </dic>
                        </td>
                        <td class="Cn2">
                            <input type="password" name="password" id="password" class="int" placeholder="비밀번호를 입력해주세요."
                                onfocus="this.placeholder=''" onblur="this.placeholder='비밀번호를 입력해주세요.'">
                            <div id="pwdError" class="error"></div>
                            <span class="point-color">
                                <small>
                                    8~15자리의 영문/숫자/특수문자를 함께 입력해주세요.
                                </small>
                            </span>
                            <input type="password" name="passwordCheck" id="passwordCheck" class="int"
                                placeholder="비밀번호를 다시 입력해주세요." onfocus="this.placeholder=''"
                                onblur="this.placeholder='비밀번호를 다시 입력해주세요.'">
                            <div id="pwdCkError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn">
                            <em class="point-color">*</em>
                            <label for="name">이름</label>
                        </td>
                        <td class="Cn2">
                            <input type="text" name="name" id="name" class="int" size="35"
                                placeholder="한글 또는 영문으로 입력해주세요." onfocus="this.placeholder=''"
                                onblur="this.placeholder='한글 또는 영문으로 입력해주세요.'">
                            <div id="nameError" class="error"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="Cn"><label for="email1">이메일</label></td>
                        <td class="Cn2">
                            <input type="text" name="email1" id="email1" class="int_email_input" size="6"> @
                            <select name="email" class="int_email" id="email2">
                                <option value="naver.com" selected>naver.com
                                <option value="gmail.com">gmail.com
                                <option value="nate.com">nate.com
                                <option value="hanmail.net">hanmail.net
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="create" colspan="2">
                            <input class="CelBtu" type="button" value="취    소" onclick="cancel()">
                            <input class="CreBtu" type="button" value="가    입" onclick="signUpCheck()">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="header">
            <div>
              <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
                <defs>
                  <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
                </defs>
                <g class="parallax">
                  <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(27,188,155,0.7)" />
                  <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(27,188,155,0.5)" />
                  <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(27,188,155,0.3)" />
                  <use xlink:href="#gentle-wave" x="48" y="7" fill="rgba(27,188,155,01)" />
                </g>
              </svg>
            </div>
          </div>
  </section>

  <!-- -->

</body>
</html>