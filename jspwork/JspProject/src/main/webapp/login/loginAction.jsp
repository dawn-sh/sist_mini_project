<%@page import="idx.model.IdxDao"%>
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
	//로그인에서 유일하게 저장하는 공간
	
	
	
	request.setCharacterEncoding("utf-8");

	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	String save=request.getParameter("savechk");
	
	//아이디와 비번이 맞는지 확인
	IdxDao db=new IdxDao();
	boolean flag=db.isLogin(id, pass);
	
	//맞으면 세션 지정 후 로그인 메인으로 이동/판단은 메인에서 하기 때문
	if(flag)
	{
		//로그인 중인지 알 수 있는 세션저장
		session.setAttribute("loginok", "yes"); //상징적으로 로그인 성공의 경우 yes/ok 사용
		//아이디 세션 저장
		session.setAttribute("idok", id); //request로 받은 id값 저장
		//체크값 세션 저장...체크하면 값이 on,안하면 null
		session.setAttribute("saveok", save); //아이디저장 박스 체크유무
		
		//세션 유지시간
		session.setMaxInactiveInterval(60*60*8); //8시간동안 유지(생략시 30분)/아이디저장 시간도 같이 적용
		
		response.sendRedirect("loginMain.jsp");
	}
	else
	{%>
		<script type="text/javascript">
			alert("아이디와 비밀번호가 맞지 않습니다");
			history.back();
		</script>
	<%}
%>
</body>
</html>