<%@page import="member.model.MemberDto"%>
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
	String num=request.getParameter("num");
	MemberDao dao=new MemberDao();
	MemberDto dto=dao.getData(num);
%>
<body>
	<div style="margin: 50px; 100px;" class="form-inline">
		<form action="updateProc.jsp" method="post" enctype="multipart/form-data" class="form-inline" id="mfrm">
		<input type="hidden" name="num" value="<%=num%>">
			<table class="table table-bordered" style="width: 500px;">
				<caption align="top"><b>회원수정</b></caption>
				<tr>
					<td style="background-color: #66cdaa" width="120">아이디</td>
					<td>
						<b><%=dto.getId() %></b>
					</td>
				</tr>
				
				<tr>
					<td style="background-color: #66cdaa" width="120">비밀번호</td>
					<td>
						<input type="password" class="form-control" style="width: 120px;"
						name="pass" required="required" value="<%=dto.getPass()%>">
					</td>
				</tr>
				
				<tr>
					<td style="background-color: #66cdaa" width="120">이름</td>
					<td>
						<input type="text" class="form-control" style="width: 120px;"
						name="name" required="required" value="<%=dto.getName()%>">
					</td>
				</tr>
				
				<tr>
					<td style="background-color: #66cdaa" width="120">사진</td>
					<td>
						<input type="file" class="form-control" style="width: 250px;"
						name="uploadImage">
						<img alt="" src="<%=dto.getImage()%>" width="50" height="50" style="border-radius: 50px;">
					</td>
				</tr>
				
				<tr>
					<td style="background-color: #66cdaa" width="120">핸드폰</td>
					<td>
						<input type="text" class="form-control" style="width: 120px;"
						name="hp" required="required" value="<%=dto.getHp()%>">
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-warning"
						id="btnGaip">회원정보 수정</button>
						<button type="button" class="btn btn-success" onclick="location.href='memberList.jsp'">회원목록</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>