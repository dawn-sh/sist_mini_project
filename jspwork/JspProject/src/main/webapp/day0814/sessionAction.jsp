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

	//세션이 있는지 확인 후 없으면 꽝!!!
	//조건에 넣어주기 위해 변수에 대입
	//session이 Object 타입이기 때문에 String으로 형변환
	String msg=(String)session.getAttribute("msg");
	String travel=request.getParameter("travel");
	
	//조건에서 null조건을 줄 경우 항상 앞에 줘야한다
	//msg값이 null이거나 msg값이 happy가 아니라면
	if(msg==null || !msg.equals("happy"))
	{%>
		<h3 style="color: red;">시간초과로 꽝입니다</h3>
	<%}
	else
	{%>
		<h3>축<%=travel %> 상품에 당첨됨!!!</h3>
	<%}
%>

<a href="sessionForm.jsp">다시선택</a>
</body>
</html>