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
<body>
<%
	request.setCharacterEncoding("utf-8");

	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	String savechk=request.getParameter("savechk");
	
	MemberDao dao=new MemberDao();
	boolean flag=dao.isLogin(id, pass);
	
	if(flag)
	{
		session.setAttribute("loginok", "yes");
		
		session.setAttribute("id", id);
		session.setAttribute("savechk", savechk);
		
		session.setMaxInactiveInterval(60*60*8);
		
		response.sendRedirect("loginMain.jsp");
	}
	else
	{%>
		<script type="text/javascript">
			alert("로그인 혹은 비밀번호가 틀렸습니다");
			history.back();
		</script>
	<%}
%>
</body>
</html>