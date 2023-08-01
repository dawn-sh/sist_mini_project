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
	//배열선언
	String colors[]={"green","magenta","gray","yellow","cyan"};
	//제목
	String title="배열출력";
%>
<b><%=title %></b>

<table class="table table-bordered" style="width: 200px;">

	<tr>
		<th>번호</th>
		<th>색상</th>
	</tr>
	
	<!-- tr이 반복되야하기 때문에 tr태그 나와서 for문 작성 -->
	<%
		for(int i=0;i<colors.length;i++)
		{%>	<!-- for문 안은 JAVA가 아니기 때문에 꺽쇠를 열고 닫아줘야함 -->
			<tr>
				<td align="center"><%=i+1 %></td>
				<td>
					<!-- 글자에 색 입히고 싶으면 style줘서 꺽쇠=colors[i]퍼센트꺽쇠 배열넣어줘야 -->
					<b style="color: <%=colors[i] %>"><%=colors[i] %></b>
				</td>
			</tr>
		<%}
	%>
</table>
</body>
</html>