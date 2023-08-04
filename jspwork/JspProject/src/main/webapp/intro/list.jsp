<%@page import="model.intro.IntroDto"%>
<%@page import="java.util.Vector"%>
<%@page import="model.intro.IntroDao"%>
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
	IntroDao dao=new IntroDao();
	Vector<IntroDto> list=dao.getAllIntro();
%>
<button type="button" class="btn btn-info"
onclick="location.href='insertForm.jsp'">데이터 추가</button>
<br><br>
<table class="table table-bordered" style="width: 900px;">
	<tr align="center" valign="middle" class="table-info">
		<th width="60">번호</th>
		<th width="80">이름</th>
		<th width="80">혈액형</th>
		<th width="150">전화번호</th>
		<th width="80">도시</th>
		<th width="250">가입날짜</th>
		<th width="250">편집</th>
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
		for(int i=0;i<list.size();i++)
		{
			IntroDto dto=list.get(i);	
		%>
			
			<tr>
				<td><%=i+1 %></td>
				<td class="name" onclick="location.href='detail.jsp?num=<%=dto.getNum()%>'"><%=dto.getName() %></td>
				<td><%=dto.getBlood() %></td>
				<td><%=dto.getHp() %></td>
				<td><%=dto.getCity() %></td>
				<td><%=dto.getGaipday() %></td>
				<td>
				<button type="button" class="btn btn-success btn-sm"
				onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">수정</button>
				<button type="button" class="btn btn-danger btn-sm"
				onclick="confirm('삭제하겠습니까?')?location.href='delete.jsp?num=<%=dto.getNum()%>'
				:alert('취소하셨습니다')">삭제</button>
				</td>
			</tr>
		<%}
	}
	
%>
</table>
<script>
$(".name").each(function(){
	$(this).mouseover(function(){
		$(this).css({
			"cursor":"pointer",
			"text-decoration":"underline",
			"text-decoration-color":"cadetblue",
			"color":"cadetblue"
		})
	})
	
	$(this).mouseout(function(){
		$(this).css({
			"cursor":"pointer",
			"text-decoration":"none",
			"color":"black"
		})
	})
})
</script>
</body>
</html>