<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
      <meta charset="UTF-8">
      <title>로그인 창</title>
      <link href="<c:url value='/css/login.css'/>" rel="stylesheet" type="text/css">
      <link href="<c:url value='/css/wave.css'/>" rel="stylesheet" type="text/css">
      <link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
      <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
      
      <!-- Toastr -->
      <link href="<c:url value='/css/toastr.min.css'/>" rel="stylesheet" type="text/css">
      <script src="<c:url value='/js/toastr.min.js'/>"></script>

		  <script src="<c:url value='/js/login.js'/>"></script>
  </head>
<body>

  <!-- TOP -->

  <section>
    <div class="login-form">
        <form id="loginForm" name="loginForm">
          <h2>로그인</h2>
          <input type="text" id="id" name="id" class="text-field">
          <input type="password" id="pwd" name="pwd" class="text-field">
          <input type="submit" value="로그인" class="btn">
        </form>
          <div class="links">
            아직 회원이 아니신가요?&emsp;&emsp;<a href="<c:url value='/consentForm'/>" style="font-size: 14px;">회원가입</a>
          </div>
          
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