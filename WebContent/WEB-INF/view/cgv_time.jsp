<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="include/cgv_header.jsp" %>
<style type="text/css">
	#container1{
		width: 60%;
		margin: 0 auto;
	}
	h2{
		text-align: center;
	}
	table{
		margin: 0 auto;
		border-collapse: collapse;
		width: 80%;
	}
	th, td{
		border: 1px solid #ABABAB;
		height: 40px;
	}
	td{
		padding-left: 10px;
	}
</style>
<div id="container1">
	<h2>&#60;상영시간표&#62;</h2>
	<table>
		<c:forEach var="cinema" items="${list }">
			<tr>
				<th>${cinema.title }</th>
				<td>${cinema.time }</td>
			</tr>
		</c:forEach>
		<%-- <%
			for(int i=0;i<list.size();i++){
				CinemaInfo cinema = list.get(i);
				out.println("<tr>");
				out.println("<th>"+cinema.getTitle()+"</th>");
				out.println("<td>"+cinema.getTime()+"</td>");
				out.println("</tr>");
			}
		%> --%>
	</table>
</div>
<%@ include file="include/cgv_footer.jsp" %>