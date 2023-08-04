<%@page import="model.sinsang.SinsangDto"%>
<%@page import="java.util.Vector"%>
<%@page import="model.sinsang.SinsangDao"%>
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
	// dao를 생성해야 vector 생성 가능
	SinsangDao dao=new SinsangDao();
	// Vector에 넣은 값들을 출력해야하기 때문에 vector 생성
	Vector<SinsangDto> list=dao.getAllDates();
%>
<body>
<%-- (전송해서 sql table에 입력된 값을 여기에 출력해야함) --%>
<button type="button" class="btn btn-info"
onclick="location.href='insertForm.jsp'">데이터 추가</button>
<br><br>
<table class="table table-bordered" style="width: 700px;">
	<tr class="table-success" style="text-align: center;">
		<%-- 번호는 갯수가 몇 개인지 띄운거지 sequence번호가 아님 --%>
		<th width="60">번호</th>
		<th width="100">이름</th>
		<th width="250">주소</th>
		<th width="250">날짜</th>
		<%-- 나중에 데이터 추가 삭제할 곳 --%>
		<th width="250">편집</th>
	</tr>
	
	<%
		// 모든 데이터들의 데이터 값마다 tr 반복되어야해서 for문 사용/컬렉션은 length아니고 size
		for(int i=0;i<list.size();i++)
		{
			//리스트에서 인덱스 값을 얻어서 dto(db에 담긴 값들)로 불러와야함
			//list는 우리가 만든 컬렉션(Vector)
			SinsangDto dto=list.get(i);
			%>
			<%-- 출력 --%>
			<tr>
				<%-- 번호 / 보통은 시퀀스를 넣음 --%>
				<td><%=i+1 %></td>
				<%-- dto에 값이 모두 있기 때문에 get으로 얻어와야함 --%>
				<td><%=dto.getName() %></td>
				<td><%=dto.getAddr() %></td>
				<td><%=dto.getSdate() %></td>
				<%-- 편집 / 수정 삭제 버튼 --%>
				<td>
					<button type="button" class="btn btn-info btn-sm"
					onclick="location.href='updateForm.jsp?num=<%=dto.getNum() %>'">수정</button>
					
					<%-- 시퀀스 번호가 있어야하는데 location.href에 delete가 심어져야 삭제됨 
					 	 delete.jsp? ?(멤버값을 이어주기 위해 사용) / ?는 이어진다는 뜻 그곳에 num(시퀀스)값을 dto에서 얻어와 삭제--%>
					<button type="button" class="btn btn-danger btn-sm"
					onclick="location.href='delete.jsp?num=<%=dto.getNum() %>'">삭제</button>
				</td>
			</tr>
		<%}
	%>
</table>
</body>
</html>