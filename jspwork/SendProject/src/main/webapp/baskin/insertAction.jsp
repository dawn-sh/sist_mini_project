<%@page import="model.baskin.BaskinDao"%>
<%@page import="model.baskin.BaskinDto"%>
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

	String selectedFlavor1 = request.getParameter("selectedFlavor1");
	String selectedFlavor2 = request.getParameter("selectedFlavor2");
	String selectedFlavor3 = request.getParameter("selectedFlavor3");
	String selectedFlavor4 = request.getParameter("selectedFlavor4");
	String mtime=request.getParameter("mtime");
	String spoon=request.getParameter("spoon");
	
	BaskinDto dto=new BaskinDto();
	dto.setKinimage1(selectedFlavor1);
	dto.setKinimage2(selectedFlavor2);
	dto.setKinimage3(selectedFlavor3);
	dto.setKinimage4(selectedFlavor4);
	dto.setMtime(mtime);
	dto.setSpoon(spoon);
	
	BaskinDao dao=new BaskinDao();
	dao.insertBaskin(dto);
	
	response.sendRedirect("thirdForm.jsp");
%>	
</body>
</html>