<%@page import="java.text.SimpleDateFormat"%>
<%@page import="member.model.MemberDto"%>
<%@page import="java.util.Vector"%>
<%@page import="member.model.MemberDao"%>
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
<%
	MemberDao dao=new MemberDao();
	Vector<MemberDto> list=dao.getAllDataes();
	
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>
<body>
<button type="button" class="btn btn-info" onclick="location.href='addForm.jsp'">회원가입</button>
<button type="button" class="btn btn-outline-info" onclick="location.href='loginForm.jsp'">로그인</button>
<br><br>
<table class="table table-bordered" style="width: 600px;">
	<tr align="center">
		<th style="width: 50px;">번호</th>
		<th style="width: 90px;">아이디</th>
		<th style="width: 70px;">회원명</th>
		<th style="width: 140px;">핸드폰</th>
		<th style="width: 100px;">가입일</th>
		<th style="width: 100px;">편집</th>
		<b>총 <%=list.size() %>명의 회원이 있습니다</b>
	</tr>
	
	<%
		for(int i=0;i<list.size();i++)
		{	
			MemberDto dto=list.get(i);
			
		%>
			<tr>
				<td><%=i+1 %></td>
				<td><%=dto.getId() %></td>
				<td><%=dto.getName() %>
					<img src="<%=dto.getImage() %>" style="width:50px; height: 50px; border-radius: 50px;"></td>
				<td><%=dto.getHp() %></td>
				<td><%=sdf.format(dto.getGaip()) %></td>
				<td>
					<button type="button" class="btn btn-warning btn-sm"
					onclick="location.href=''">수정</button>
					<button type="button" class="btn btn-danger btn-sm"
					onclick="location.href=''">삭제</button>
				</td>
			</tr>
		<%}
	%>
</table>
</body>
</html>