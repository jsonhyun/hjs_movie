<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="include/cgv_header.jsp" %>
<style type="text/css">
	#container1{
		width: 57%;
		margin: 0 auto;
		text-align: center;
		position: relative;
		
	}
	#plus{
		position: absolute;
		top: 5px;
		right: -115px;
	}
	.cinemainfo{
		border: 1px solid #ccc;
		width: 190px;
		padding: 10px;
		float: left;
		margin: 0 20px;
   		margin-bottom: 40px;
	}
	ul{
		list-style: none;
	}
	.font{
		text-decoration: none;
		color: black;
	}
	.img{
		width: 185;
		height: 260px;
	}
</style>
<div id="container1">
	<a href="add.do" id="plus"><button id="btnAdd">상영영화 추가하기</button></a>
	<ul>
	<c:forEach var="cinema" items="${cinema }">
		<li>
			<div class='cinemainfo'>
				<a href='detail.do?no=${cinema.no }' class='font'>
					<img src='upload/${cinema.file }' class='img'>
					<span>${cinema.title }</span>
				</a>
			</div>
		</li>
	</c:forEach>
	</ul>
</div>
<%@ include file="include/cgv_footer.jsp" %>