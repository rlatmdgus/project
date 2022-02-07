<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 수정</title>
		<link href="<c:url value='/css/memUpdate.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/wave.css'/>" rel="stylesheet" type="text/css">
	</head>
	<body>
		<section>
			<div class="memUpdate-form">
				<h3>회원 정보 수정</h3>
				<form method="post" action="<c:url value='/member/memberUpdate'/>">
					<p class="text">아이디</p><input class="text-field" type="text" name="mem_id" value="${mem.mem_id}" readonly><br>
					<p class="text">비밀번호</p><input class="text-field" type="text" name="mem_pwd" value="${mem.mem_pwd}"><br>
					<p class="text">성명</p><input class="text-field" type="text" name="mem_name" value="${mem.mem_name}"><br>
					<p class="text">이메일</p><input class="text-field" type="text" name="mem_email" value="${mem.mem_email}"><br>
					<input class="btn" type="submit" value="수정"><input class="btn" type="reset" value="취소" onclick="location.href='/'">
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