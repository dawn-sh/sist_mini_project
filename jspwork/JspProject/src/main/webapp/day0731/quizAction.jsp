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
	String size=request.getParameter("size");
	String color[]=request.getParameterValues("color");
	String addSang[]=request.getParameterValues("addSang");
%>

	상품명: 나이키 조던<br>
	사이즈: <%=size %>mm<br>
	색상:
	<%
		for(int i=0;i<color.length;i++)
		{%>
			<div style="background-color: <%=color[i]%>; width:100px; height:100px;"></div>	
		<%}
	%>
	
	
	추가상품:
	
	<%
		if(addSang==null)
		{%>
			<b>추가상품 없음</b>
		<%}
		else
		{
			for(int i=0;i<addSang.length;i++)
			{%>
				[<%=addSang[i] %>]&nbsp;
			<%}
		}
	
	%>
</body>
</html>