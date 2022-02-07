<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
        인덱스 페이지
        <br>
         <!-- 로그인 하지 않은 경우 보여줄 메뉴 항목  -->
		<c:if test="${empty sessionScope.sid }">
	        <a href="<c:url value='/loginForm'/>">로그인</a>
            &nbsp; 	
			<a href="<c:url value='/consentForm'/>">회원가입</a>
		</c:if>
						
		<!-- 로그인 성공한 경우 보여줄 메뉴 항목  -->	
		<c:if test="${not empty sessionScope.sid}">
			${sessionScope.sid} 님 환영합니다!
            <br>
			<a href="<c:url value='/logout'/>">로그아웃</a>
            &nbsp; 
			<a href="<c:url value='/memUpdateForm/${sessionScope.sid}'/>">정보수정</a>	
			&nbsp;
			<a href="<c:url value='/memDeleteForm'/>">계정삭제</a>	
			&nbsp; 
		</c:if>	
</body>
</html>