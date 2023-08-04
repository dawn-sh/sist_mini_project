<%@page import="model.sinsang.SinsangDto"%>
<%@page import="model.sinsang.SinsangDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&family=Diphylleia&family=Dokdo&family=Nanum+Brush+Script&family=Nanum+Gothic+Coding&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<%-- updateform은 보통 insertform을 복사해서 만든다
	 수정할 사람의 조회메서드와 데이터가 필요하다(기존 값을 가져와야 수정이 되기 때문) --%>
<%
	String num=request.getParameter("num");
	SinsangDao dao=new SinsangDao();
	SinsangDto dto=dao.getData(num);
%>

<%-- action도 updateAction으로 바꿔줘야함 --%>
<form action="updateAction.jsp" method="post">

<%-- hidden은 위치상관없다 폼 안에만 있으면 됨
	 num값은 보이지는 않지만 폼 안에 있어야 수정 가능 (23번이면 시퀀스 23번의 값을 가져와야 수정 가능) --%>
<input type="hidden" name="num" value="<%=num%>">
	<table class="table table-bordered" style="width: 400px;">
		<tr>
			<th>이름</th>
			<td>
				<%-- 수정할 사람의 이름과 주소를 가져와야 하기 때문에 value값으로 이름과 주소가 필요 --%>
				<input type="text" name="name" style="width: 150px;"
				value="<%=dto.getName()%>">
			</td>
		</tr>
		
		<tr>
			<th>주소</th>
			<td>
				<input type="text" name="addr" style="width: 250px;"
				value="<%=dto.getAddr()%>">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="수정" class="btn btn-warning">
				<input type="button" value="목록" onclick="location.href='list.jsp'"
				class="btn btn-success">
			</td>
		</tr>
	</table>
</form>
</body>
</html>