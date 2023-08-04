<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="model.mymall.MallDto"%>
<%@page import="java.util.Vector"%>
<%@page import="model.mymall.MallDao"%>
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
	MallDao dao=new MallDao();
	Vector<MallDto> list=dao.getAllMyMalls();
%>
<body>
<button type="button" class="btn btn-info"
onclick="location.href='addForm.jsp'">데이터 추가</button>
<br><br>
<table class="table table-bordered" style="width: 800px;">
	<tr class="table-warning" style="text-align: center;">
		<th width="60">번호</th>
		<th width="120">상품명</th>
		<th width="150">상품사진</th>
		<th width="120">가격</th>
		<th width="250">입고일</th>
		<th width="250">작성일</th>
		<th	width="200">수정 삭제</th>
	</tr>
	
	<%
	
	if(list.size()==0){
		%>
		<tr>
			<td colspan="7" align="center">
				<h3>데이터가 없습니다</h3>
			</td>
		</tr>
	<%}
	
	else
	{
		NumberFormat nf= NumberFormat.getCurrencyInstance();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
		
		for(int i=0;i<list.size();i++)
		{
			MallDto dto=list.get(i);
			%>
			<tr align="center" valign="middle">
				<td align="center" valign="middle"><%=i+1 %></td>
				<td align="center" valign="middle"><%=dto.getSangpum() %></td>
				<td align="center" valign="middle" id="photo"
				onclick="location.href='detailPage.jsp?no=<%=dto.getNo()%>'"><img src='<%=dto.getPhoto() %>' width="60" height="60"></td>
				<td align="center" valign="middle"><%=dto.getPrice() %>원</td>
				<td align="center" valign="middle"><%=dto.getIpgoday() %></td>
				<td align="center" valign="middle"><%=dto.getWriteday() %></td>
				<td>
				<button type="button" class="btn btn-warning btn-sm"
				onclick="location.href='updateForm.jsp?no=<%=dto.getNo()%>'">수정</button>
				<button type="button" class="btn btn-danger btn-sm"
				onclick="confirm('삭제하시겠습니까?')?location.href='delete.jsp?no=<%=dto.getNo()%>'
				:alert('취소되었습니다')">삭제</button>
				</td>
			</tr>
		<%}
	}
	%>
</table>
</body>
</html>