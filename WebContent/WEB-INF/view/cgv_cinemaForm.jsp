<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="include/cgv_header.jsp" %>
<style type="text/css">
	#container1{
		width: 25%;
		padding: 52px 0;
		margin: 0 auto;
		position: relative;
	}
	form{
		margin: 0 auto;
	}
	form p{
		margin: 20px;
	}
</style>
<div id="container1">
	<form action="add.do" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend>영화 정보</legend>
			<p>
				<label>제목 : </label>
				<input type="text" name="title" placeholder="영화 이름">
			</p>
			<p>
				<label>상세 설명 : </label>
				<textarea rows="15" cols="50" name="content" placeholder="영화 상세 설명"></textarea>
			</p>
			<p>
				<label>파일 : </label>
				<input type="file" name="file">
			</p>
			<p>
				<label>상영 시간 : </label>
				<input type="text" name="time" placeholder="시간">
			</p>
			<p>
				<input type="submit" value="전송">
			</p>
		</fieldset>
	</form>
</div>
<%@ include file="include/cgv_footer.jsp" %>