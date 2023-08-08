<%@page import="model.intro.IntroDto"%>
<%@page import="model.intro.IntroDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>q
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&family=Diphylleia&family=Dokdo&family=Nanum+Brush+Script&family=Nanum+Gothic+Coding&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

	String num=request.getParameter("num");
	IntroDao dao=new IntroDao();
	IntroDto dto=dao.getData(num);
%>
	<table class="table table-bordered" style="width: 700px;">
		<b>상세 정보</b>
		<tr align="center" valign="middle">
			<th>이름</th>
			<td><%=dto.getName() %></td>
		</tr>
		
		<tr align="center" valign="middle">
			<th>지역</th>
			<td><%=dto.getCity() %></td>
		</tr>
		
		<tr align="center" valign="middle">
			<th>전화번호</th>
			<td><%=dto.getHp() %></td>
		</tr>
		
		<tr align="center" valign="middle">
			<th>혈액형</th>
			<td><%=dto.getBlood() %></td>
		</tr>
		
		<tr align="center" valign="middle">
			<th>가입일</th>
			<td><%=dto.getGaipday() %></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<button class="btn btn-success" style="width: 150px;"
				onclick="location.href='list.jsp'">목록</button>
			</td>
		</tr>
	</table>
</body>
</html>