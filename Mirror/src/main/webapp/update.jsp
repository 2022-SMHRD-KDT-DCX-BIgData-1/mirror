<%@page import="com.mirror.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assets/css/update.css" />		
	</head>
	<body style="text-align: center;">

		<!-- Wrapper -->
	<% 
	Member loginMember = (Member)session.getAttribute("loginMember");
	%>
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h5>회원정보수정</h5></li>
								<form action="UpdateC" method="post">
									<li>접속한 아이디:<%=loginMember.getM_id()%></li>
									<li><input  name="m_nick" type="text" placeholder=<%=loginMember.getM_nick() %> style="width: 500px; margin: 0 auto;"></li>
									<li><input name="m_pw" type="text" readonly placeholder=<%=loginMember.getM_pw() %> style="width: 500px; margin: 0 auto;"></li>
									<li><input name="m_pw" type="password" placeholder=<%=loginMember.getM_pw() %> style="width: 500px; margin: 0 auto;"></li>
									<li><input type="submit" value="회원정보 수정" class="button fit" style="width: 500px; margin: 0 auto;"></li>
									<li><a href="MyPage.jsp"><input type="button" value="돌아가기" class="button fit" style="width: 500px; margin: 0 auto;"></a></li>
								</form>
						</ul>
					</nav>			
			</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
	</body>
</html>

