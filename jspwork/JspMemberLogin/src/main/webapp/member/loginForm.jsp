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
<style type="text/css">
	.loginfrm{
		margin-left: 500px;
		margin-top: 200px;
	}
</style>
</head>
<%
	String id=(String)session.getAttribute("id");
	String savechk=(String)session.getAttribute("savechk");
	
	boolean save=true;
	
	if(savechk==null)
	{
		id="";
		save=false;
	}
%>
<body>
<div class="loginfrm">
	<form action="loginAction.jsp" method="post">
		<input type="text" name="id" style="width: 200px;"
		class="form-control" placeholder="identify" required="required"
		value="<%=id%>"><br>
		
		<input type="password" name="pass" style="width: 200px;"
		class="form-control" placeholder="password" required="required"><br>
		
		<button type="submit" class="btn btn-outline-info"
		style="width: 200px;">로그인</button>
		<br>
		
		<input type="checkbox" name="savechk"
		<%=save?"checked":"" %>>아이디저장
	</form>
</div>
</body>
</html>