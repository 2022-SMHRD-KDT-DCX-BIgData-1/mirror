<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<title>Arcana by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/MyPage.css" />
		
		<link rel="stylesheet" href="assets/css/quickmenu.css" />
		<script src="webapp/jquery-3.6.0 min.js"></script>
</body>
<body class="is-preload">
	<%-- <%
	 	Member loginMember = (Member)session.getAttribute("loginMember");
	
	
	%> --%>
<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="main.jsp" id="logo">Mirror</a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<!-- <li class="current"><a href="index.html">Home</a></li> -->
								<li>
									<!-- <a href="#">Dropdown</a> -->
									<ul>
										<li><a href="#">Lorem dolor</a></li>
										<li><a href="#">Magna phasellus</a></li>
										<li><a href="#">Etiam sed tempus</a></li>
										<li>
											<a href="#">Submenu</a>
											<ul>
												<li><a href="#">Lorem dolor</a></li>
												<li><a href="#">Phasellus magna</a></li>
												<li><a href="#">Magna phasellus</a></li>
												<li><a href="#">Etiam nisl</a></li>
												<li><a href="#">Veroeros feugiat</a></li>
											</ul>
										</li>
										<li><a href="#">Veroeros feugiat</a></li>
									</ul>
								</li>
								<!-- <li><a href="left-sidebar.html">Left Sidebar</a></li> -->
								<!-- <li><a href="right-sidebar.html">Right Sidebar</a></li> -->
								<li><a href="IntroN1.jsp">홈페이지소개</a></li>
								<li><a href="IntroN2.jsp">홈페이지 의의</a></li>
								<li><a href="IntroN3.jsp">홈페이지 목적</a></li>
								<li><a href="IntroN4.jsp">홈페이지 방향성</a></li>
								<li><a href="Login.jsp">로그인</a></li>
								<li><a href="Join.jsp">회원가입</a></li>
							</ul>
							    
						</nav>
						
				</div>
				
	<div class="quickmenu">
	  <ul>
	    <li><a href="IntroN.jsp">소개</a></li>
	    <li><a href="#">지역검색</a></li>
	    <li><a href="#">더보기</a></li>
	  </ul>
 </div>
<!-- 출처: https://hongpage.kr/40 [홍페이지 HONGPAGE:티스토리] -->
	<img  src="assets/css/images/intro3.jpg" width="1500px">			
<script>
		$(document).ready(function(){
			  var currentPosition = parseInt($(".quickmenu").css("top"));
			  $(window).scroll(function() {
			    var position = $(window).scrollTop(); 
			    $(".quickmenu").stop().animate({"top":position+currentPosition+"px"},1000);
			  });
			});
		/* 출처: https://hongpage.kr/40 [홍페이지 HONGPAGE:티스토리] */
	</script>
</body>
</html>