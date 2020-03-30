<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="include/cgv_header.jsp" %>
<style type="text/css">
	#container1{
		width: 31%;
		margin: 40px auto;
	}
	img{
		float: left;
		width: 200px;
		padding-bottom: 40px;
	}
	#container2{
		float: left;
		width: 350px;
		margin-left: 30px;
	}
	#title{
		font-size: 20px;
		font-weight: bold;
	}
	#explain{
		font-weight: bold;
		font-size: 17px;
	}
	#btn{
		clear:both;
		margin-top: 15px;
	}
	#container3{
		width: 31%;
   		margin: 0 auto;
    	text-align: center;
    	clear: both;
    	height: 25px;
	}
</style>
<div id="container1">
	<img src="upload/${cinema.file }">
	<div id="container2">
		<p id="title">${cinema.title }</p>
		<p>&#60;줄거리&#62;</p>
		<p id="explain">${cinema.content }</p>
	</div>		
</div>
<div id="container3">
	<a href="cinema.do"><button id="btn">돌아가기</button></a>
</div>
<%@ include file="include/cgv_footer.jsp" %>