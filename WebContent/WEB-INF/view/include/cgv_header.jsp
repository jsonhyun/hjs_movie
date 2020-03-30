<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#container{
		width: 80%;
		margin: 0 auto;
	}
	header{
		text-align: center;
		position: relative;
	}
	header h1{
		margin-bottom: 20px;
	}
	.log{
		position: absolute;
		bottom: 5px;
		right: 390px;
		margin: 0;
	}
	header a{
		text-decoration: none;
		color: #8C8C8C;
		font-weight: bold;
	}
	header #red{
		color: red;
	}
	nav{
		width: 100%;
		height: 50px;
		border: 1px solid #ccc;
		background-color: skyblue;
	}
	#menu{
		list-style: none;
		width: 60%;
		margin: 0 auto;
		height: 50px;
	}
	.sub{
		width: 100px;
		display: inline;
		float: left;
		height: 50px;
		line-height: 50px;
		margin-right: 80px;
		text-align: center;
	}
	#first{
		margin-left: 130px;
	}
	.name{
		text-decoration: none;
		color: white;
		font-weight: bold;
		font-size: 18px;
	}
</style>
</head>
<body>
	<div id="container">
		<header>
			<h1>대구 <span id="red">CGV</span></h1>
			<%
				String auth = (String)session.getAttribute("Auth");
				if(auth != null){%>
					<p class="log"><a href="cgv_logout.jsp">로그아웃</a> [<%= auth%>]님 반갑습니다.</p>
				<%}else{%>
					<p class="log"><a href="cgv_loginForm.jsp">로그인</a></p>
				<%}
			%>
		</header>
		<nav>
			<ul id="menu">
				<li class="sub" id="first"><a href="home.do" class="name">HOME</a></li>
				<li class="sub"><a href="cinema.do" class="name">상영영화</a></li>
				<li class="sub"><a href="time.do" class="name">상영시간표</a></li>
				<li class="sub"><a href="#" class="name">게시판</a></li>
			</ul>
		</nav>
	</div>