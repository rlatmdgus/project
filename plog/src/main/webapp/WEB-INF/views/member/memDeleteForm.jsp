<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<title>계정삭제</title>
        <link href="<c:url value='/css/wave.css'/>" rel="stylesheet" type="text/css">
        <script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/memberDelete.js'/>"></script>
        <link href="<c:url value='/css/memDelete.css'/>" rel="stylesheet" type="text/css">
	</head>
	<body>
		<section>
            <div class="delete-form">
                <h3>계정삭제</h3>
                <form  method="post" action="<c:url value='/member/memberDelete'/>" id="delForm">
                    <div>
                        <p for="mem_id">아이디</p>
                        <input class="text-field" type="text" id="mem_id" name="mem_id" value="${sessionScope.sid}" readonly/>
                    </div>
                    <div>
                        <p for="mem_pwd">비밀번호</p>
                        <input class="text-field" type="password" id="mem_pwd" name="mem_pwd" />
                    </div>
                    <div>
                        <button class="btn" type="button" id="submit">삭제</button>
                        <button class="btn" type="button" id="cencle">취소</button>
                    </div>
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
	</body>
</html>