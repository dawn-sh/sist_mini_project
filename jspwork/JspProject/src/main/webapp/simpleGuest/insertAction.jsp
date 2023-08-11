<%@page import="db.simpleguest.SimpleGuestDto"%>
<%@page import="db.simpleguest.SimpleGuestDao"%>
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
<%-- <% 기존 방법
	request.setCharacterEncoding("utf-8");

	String image=request.getParameter("image");
	String nick=request.getParameter("nick");
	String pass=request.getParameter("pass");
	String story=request.getParameter("story");
	
	SimpleGuestDao dao=new SimpleGuestDao();
	SimpleGuestDto dto=new SimpleGuestDto();
	dto.setImage(image);
	dto.setNick(nick);
	dto.setPass(pass);
	dto.setStory(story);
	
	dao.insertSimpleGuest(dto);
	
	response.sendRedirect("guestList.jsp");
%> --%>

<%-- 자바빈즈로 변경하려면?
	 useBean은 new로 객체를 생성하는것과 같다 --%>
<%
	request.setCharacterEncoding("utf-8");
%>

<%-- id : 참조변수명 / class : 생성 --%>
<jsp:useBean id="dao" class="db.simpleguest.SimpleGuestDao"/>
<jsp:useBean id="dto" class="db.simpleguest.SimpleGuestDto"/>

<%-- setProperty의 name은 useBean의 id값을 불러옴
	 property="*"는 dto에 있는 모든 것을 form의 name으로 쓴다/자동 매칭해준다
	 조건문/multi 등이 들어갈 때는 사용 못한다 --%>
<jsp:setProperty property="*" name="dto"/>

<%
	//db에insert
	dao.insertSimpleGuest(dto);
	//목록으로이동
	response.sendRedirect("guestList.jsp");
%>
</body>
</html>