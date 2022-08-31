<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="index.css" rel="stylesheet">
</head>
<body>
	<h1>로그인 페이지</h1>
	<form action="LoginC" method="post">
		아이디 <input type="text" name="m_id"><br>
		비밀번호 <input type="password" name="m_pw"><br>
		<input type="submit" value="로그인">
		<a href="main.jsp"><input type="button" value="돌아가기"></a>
		
	</form>
</body>
</html>