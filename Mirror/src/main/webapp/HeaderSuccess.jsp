<%@page import="com.mirror.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="assets/css/index.css" rel= "stylesheet">
<link href="assets/css/Header.css" rel= "stylesheet">
</head>
<body>
<%
Member loingMember = (Member)session.getAttribute("loginMember");

%>
<div id="HeaderLayout">
	<a href="main.jsp"><img  id="logo" src="https://blog.kakaocdn.net/dn/CNxUY/btqw7dnElRU/HuVZgvpT6J8n4aEYFathEk/img.jpg"></a>
	<p id="menu">
		<a href="LogoutC">로그아웃</a>
		<a href="Mypage.jsp">마이페이지</a>
	</p>
	
</div>
</body>
</html>