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
<!-- f1~f20.png 4행 5열(2중for)로 출력 -->
<%
	int n=1;
%>

<table class="table table-bordered" style="width: 400px">
	<%
		for(int i=0;i<4;i++)
		{%>
			<tr>
			<%
				for(int j=0;j<5;j++)
				{%>
					<td>
						<img src="../image/f<%=n%>.png">
						<%-- <img src="../image/<%=(n<10?("0"+n):n)%>.png"> --%>
					</td>
				<%
				n++;
				}
			%>
			</tr>	
		<%}
	%>
</table>

</body>
</html>