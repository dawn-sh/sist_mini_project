<%@page import="model.mymall.MallDao"%>
<%@page import="model.mymall.MallDto"%>
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
<style>
 	#box{
 		position: absolute;
 		top: 200px;
 		left: 200px;
		width: 500px;
		height: 600px;
	}
	
	#box>img{
		border: 2px groove brown;
	}
	
	#box2{
		margin-top: 200px;
		margin-left: 500px;
	}
	
	#btn{
		position: absolute;
		top: 450px;
		left: 500px;
	}
	
	
 </style>
</head>
<body>
<%
	String no=request.getParameter("no");
	MallDao dao=new MallDao();
	MallDto dto=dao.getData(no);
%>
<div id="box"><img src='<%=dto.getPhoto() %>'></div>

<div id="box2">
	<h1>상품명: <%=dto.getSangpum() %></h1><br>
	<h1>가격: <%=dto.getPrice() %>원</h1><br>
	<h1>입고일: <%=dto.getIpgoday() %></h1>
	<br><br><br><br><br>
</div>

	<button type="button" id="btn" class="btn btn-success" style="width: 100px; height: 50px;"
	onclick="location.href='list.jsp'">목록</button>

</body>
</html>