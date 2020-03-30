<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="include/cgv_header.jsp" %>
<style type="text/css">
	#container1{
		width: 80%;
		margin: 0 auto;
		text-align: center;
		position: relative;
	}
	img{
		width: 90%;
		margin: 10px 0;
		margin-bottom: -50px;
	}
	#title{
		position: absolute;
		top: 30px;
		left: 130px;
		color: white;
		font-size: 26px;
		font-weight: bold;
	}
	#red{
		color: red;
	}
</style>
<div id="container1">
	<img alt="영화관 전경" src="images/cgvdaegu.jpg">
	<p id="title">대구 <span id="red">CGV</span></p>
</div>
<%@ include file="include/cgv_footer.jsp" %>
