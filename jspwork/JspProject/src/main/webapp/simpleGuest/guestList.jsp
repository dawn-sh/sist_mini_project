<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.simpleguest.SimpleGuestDto"%>
<%@page import="java.util.Vector"%>
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
<style>
	.writeday{
		float: right;
		color: gray;
	}
	.name{
		margin-left: 40px;
		text-align: center;
	}
	.story{
		margin-left: 300px;
	}
	
	#table{
		position: absolute;
		left: 50px;
	}
</style>
</head>
<%
	SimpleGuestDao dao=new SimpleGuestDao();
	Vector<SimpleGuestDto> list=dao.getAllDates();
%>
<body>	
<div style="margin: 100px; 100px;">
<button type="button" class="btn btn-outline-info"
 onclick="location.href='insertForm.jsp'">글쓰기</button>
 </div>
 
 <div id="table">
 <table class="table table-bordered" style="width: 600px;">
 <%
 	if(list.size()==0)
 	{%>
 		<div class=""><b>데이터가 없습니다</b></div>
 	<%}
 	else{
 	for(int i=list.size()-1;i>=0;i--)
 	{	
 		//==for(int i=0;i<list.size();i++)
 		//{
 		//		int no=list.size()-i;
 		//}
 		SimpleGuestDto dto=list.get(i);
 	%>
 		<tr>
 			<th>No.<%=i+1 %>
 			<span class="name"><%=dto.getNick() %></span>
 			<span class="writeday"><%=dto.getWriteday() %></span></th>
 		</tr>
 		<tr>
 			<td><img src="../image/f<%=dto.getImage() %>.png" align="right">	
 				<pre><b><%=dto.getStory() %></b></pre></td>
 		</tr>
 		<tr>
 			<td align="right">
 				<button type="button" class="btn btn-warning btn-sm"
				onclick="location.href='updateForm.jsp?num=<%=dto.getNum() %>'">수정</button>
 				<button type="button" class="btn btn-danger btn-sm"
				onclick="location.href='deleteForm.jsp?num=<%=dto.getNum() %>'">삭제</button>
				<%-- prompt 버전 --%>
				<button type="button" class="btn btn-danger btn-sm"
				onclick="prompass(<%=dto.getNum()%>,<%=dto.getPass()%>)">프롬프트 삭제</button>
			</td>
 		</tr>

 	<%}
 	}
 %>
 </table>
 </div>
 
 
 
 <script> //prompt버전
 	function prompass(num,pass)
 	{
 		var question=prompt("비밀번호 입력해주세요");
 		
 		//비밀번호가 문자열이면 인식이 안됨/취소버튼 아예 작동이 안됨
 		/* if(question==pass)
 		{ */
    	if (!isNaN(question) && question === pass)
    	{
 			location.href='deleteAction.jsp?num='+num;
 		}
 		else
 			alert("비밀번호가 틀렸습니다");
 	}
 </script>
</body>
</html>