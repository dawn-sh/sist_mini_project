<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.myteam.TeamDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.myteam.TeamDao"%>
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
<script type="text/javascript">
	function conf(num)
	{
		var ans=confirm('삭제하시겠습니까?');
		if(ans)
		{
			location.href='teamdelete.jsp?num='+num;
		}
	}

</script>
</head>
<%
	TeamDao dao=new TeamDao();
	ArrayList<TeamDto> list=dao.getAllMyTeams();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<body>
	<a href="addForm.jsp">팀원추가</a>
	<br>
	<table class="table table-bordered" style="width: 800px;">
		<tr align="center" class="table-warning">
			<th width="60">번호</th>
			<th width="120">이름</th>
			<th width="100">운전면허</th>
			<th width="260">주소</th>
			<th width="260">작성일</th>
			<th width="120">수정 삭제</th>
		</tr>
		
		<%
			for(int i=0;i<list.size();i++)
			{
				//i번지의 dto 꺼내겠다
				TeamDto dto=list.get(i); //list.get(i)의 반환값이 dto이기때문에 TeamDto에 넣어줌
				%>
				<tr>
					<td align="center"><%=i+1%></td>
					<td align="center"><%=dto.getName() %></td>
					<td align="center"><%=dto.getDriver() %></td>
					<td><%=dto.getAddr() %></td>
					<td><%=sdf.format(dto.getWriteday()) %></td>
					<td>
					<button type="button" class="btn btn-warning btn-sm"
					onclick="location.href='updateForm.jsp?num=<%=dto.getNum() %>'">수정</button>
					
					<%-- 삼항연산자 사용 버전
						  <button type="button" class="btn btn-danger btn-sm"
						  onclick="confirm('삭제하시겠습니까?')?location.href='teamdelete.jsp?num=<%=dto.getNum() %>'
							 	   :alert('취소되었습니다')">삭제</button> --%>
							 	   
					<%-- 선생님 버전 함수 호출 --%>
					<button type="button" class="btn btn-danger btn-sm"
					onclick="conf(<%=dto.getNum() %>)">삭제</button>
					</td>
				</tr>
			<%}
		%>
	</table>
</body>
</html>