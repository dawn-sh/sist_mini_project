<%@page import="java.util.TimeZone"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.baskin.BaskinDao"%>
<%@page import="model.baskin.BaskinDto"%>
<%@page import="java.util.Vector"%>
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
	#table{
		position: absolute;
		top: 200px;
		left: 500px;
	}
	
	#logout{
		position: absolute;
		top: 140px;
		left: 500px;
	}
</style>
</head>
<body>
<%
	String num_baskin=request.getParameter("num_baskin");
	BaskinDao dao=new BaskinDao();
	Vector<BaskinDto> list=dao.getAllDataes();
	
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<form>
	<table class="table table-bordered" style="width: 900px;" id="table">
		<tr align="center" valign="middle">
			<th style="background-color: pink; width: 120px;">고객주문번호</th>
			<th style="background-color: pink; width: 150px;">종류</th>
			<th style="background-color: pink; width: 150px;">이동시간</th>
			<th style="background-color: pink; width: 100px;">스푼개수</th>
			<th style="background-color: pink; width: 200px;">주문날짜</th>
			<th style="background-color: pink; width: 200px;">편집</th>
		</tr>
		<%
			for(int i=0;i<list.size();i++)
			{	
				BaskinDto dto=list.get(i);%>
				
				<tr>
					<td align="center" valign="middle">No.<%=i+1 %></td>
					<td align="center" valign="middle">
					<img src='../베스킨라빈스/<%=dto.getKinimage1() %>.png' style="width: 50px;">
					<img src='../베스킨라빈스/<%=dto.getKinimage2() %>.png' style="width: 50px;">
					<img src='../베스킨라빈스/<%=dto.getKinimage3() %>.png' style="width: 50px;">
					<img src='../베스킨라빈스/<%=dto.getKinimage4() %>.png' style="width: 50px;"></td>
					<td align="center" valign="middle"><%=dto.getMtime() %></td>
					<td align="center" valign="middle"><%=dto.getSpoon() %></td>
					<td align="center" valign="middle"><%=sdf.format(dto.getOdate()) %></td>
					<td align="center" valign="middle">
						<button type="button" class="btn btn-outline-danger btn-sm"
						onclick="confirm('삭제하시겠습니까?')?location.href='deleteAction.jsp?num=<%=dto.getNum_baskin() %>'
						:alert('취소하셨습니다')">삭제</button>
					</td>
				</tr>
			<%}
		%>
	</table>
	<br>
		<button type="button" class="btn btn-danger"
		onclick="confirm('로그아웃 하시겠습니까?')?location.href='logoutAction.jsp':alert('취소하셨습니다')" id="logout">로그아웃</button>
</form>
</body>
</html>