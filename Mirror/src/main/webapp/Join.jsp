<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="assets/css/index.css" rel="stylesheet">
</head>
<body>
	<h1>회원가입</h1>
	<form action="JoinC">
		아이디 <input type="text" name="m_id"><br>
		비밀번호 <input type="password" name="m_pw"><br>
		닉네임 <input type="text" name="m_nick"><br>
		<input type="submit" value="회원가입">
		<a href="main.jsp"><input type="button" value="돌아가기"></a>
		<!--  -->
	</form>
</body>
</html>