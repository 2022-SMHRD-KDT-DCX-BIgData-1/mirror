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
</body>
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
								<li><a href="main.jsp">๋ก๊ทธ์์</a></li>
								<li><a href="MyPage.jsp">๋ง์ดํ์ด์ง</a></li>
								
							</ul>
							    
						</nav>
						
				</div>
				
	<div class="quickmenu">
	  <ul>
	    <li><a href="IntroY.jsp">์๊ฐ</a></li>
	    <li><a href="PlaceY.jsp">์ง์ญ๊ฒ์</a></li>
	    <li><a href="#">๋๋ณด๊ธฐ</a></li>
	  </ul>
 </div>
<!-- ์ถ์ฒ: https://hongpage.kr/40 [ํํ์ด์ง HONGPAGE:ํฐ์คํ?๋ฆฌ] -->
	<form action="PlaceSearch.jsp" method="get">
	<label for="Region"></label>
	<select id="Region" name="Region">
		<option value="1" selected="selected">์?๋ผ๋จ๋</option>
		<option value="2">์?๋ผ๋ถ๋</option>
		<option value="3">๊ฒฝ์๋จ๋</option>
		<option value="4">๊ฒฝ์๋ถ๋</option>
		<option value="5">์ถฉ์ฒญ๋จ๋</option>
		<option value="6">์ถฉ์ฒญ๋ถ๋</option>
		<option value="7">๊ฐ์๋</option>
		<option value="8">์?์ฃผ๋</option>
		<option value="9">๊ฒฝ๊ธฐ๋</option>
		<option value="10">์์ธ</option>
		<option value="11">๋ถ์ฐ</option>
		<option value="12">๋๊ตฌ</option>
		<option value="13">์ธ์ฒ</option>
		<option value="14">๋์?</option>
		<option value="15">๊ด์ฃผ</option>
		<option value="16">์ธ์ฐ</option>
		<option value="16">์ธ์ฐ</option>
	</select>
	
	<%--<input type="submit" value="๊ฒ์"> --%>			

	<label for="Place"></label>
	<select id="Place" name="Place">
		<option value="1" selected="selected">์ญ์ฌ์? ์ฅ์</option>
		<option value="2">์ง์ญ ๊ด๊ด์ง</option>
		<option value="3">์ง์ญ ๋ชจ๋ฒ์์์?</option>
	</select><br>
	<input type="submit" value="๊ฒ์">
	</form>			
<script>
		$(document).ready(function(){
			  var currentPosition = parseInt($(".quickmenu").css("top"));
			  $(window).scroll(function() {
			    var position = $(window).scrollTop(); 
			    $(".quickmenu").stop().animate({"top":position+currentPosition+"px"},1000);
			  });
			});
		/* ์ถ์ฒ: https://hongpage.kr/40 [ํํ์ด์ง HONGPAGE:ํฐ์คํ?๋ฆฌ] */
	</script>
</body>
</html>