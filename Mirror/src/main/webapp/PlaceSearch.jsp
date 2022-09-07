<%@page import="com.mirror.domain.Member"%>
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
		<body class="is-preload">
	<%
	 	Member loginMember = (Member)session.getAttribute("loginMember");
	
	
	%>
<div id="page-wrapper"></div>

			<!-- Header -->
				<div id="header">

					<!-- Logo -->
						<h1><a href="LoginSuccess.jsp" id="logo">Mirror</a></h1>

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
								
								<li><a href="main.jsp">로그아웃</a></li>
								<li><a href="MyPage.jsp">마이페이지</a></li>
							</ul>
							    
						</nav>
						
				</div>
				
	<div class="quickmenu">
	  <ul>
	    <li><a href="IntroY.jsp">소개</a></li>
	    <li><a href="PlaceY.jsp">지역검색</a></li>
	    <li><a href="#">더보기</a></li>
	  </ul>
 </div>
 
 <c:choose>
	<c:when test="{param.Region == 1 && param.Place == 1 }" >
		<img  src="assets/css/images/652.jpeg"><br>
		<h3>역사적장소</h3> 
	</c:when>
</c:choose>
<!-- 출처: https://hongpage.kr/40 [홍페이지 HONGPAGE:티스토리] -->		
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

</body>

</html>