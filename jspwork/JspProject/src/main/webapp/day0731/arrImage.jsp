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
	String str[]={"15.png","16.png","02.png","20.png","14.png",
					"11.png","08.png","04.png","07.png"};
	int n=0;
%>

<table class="table table-bordered" style="width: 460px;">
	<%
		/* 3행 3열의 칸을 만들어주기 위한 2중 for문 */
		for(int i=0;i<3;i++) //행
		{%>
			<tr>
			<%
				for(int j=0;j<3;j++) //열
				{%>
					<td>
						<!-- 만들어진 3행3열 칸 안에 값들을 넣어주기 위한 배열안 숫자 n
							 그래서 안에 n증감연산자 사용해서 증가시킴
							 즉, str[0]부터 증가시켜서 9번 반복되니 str[0~8번째 index]-->
						<img src="../image/<%=str[n]%>" width="150" height="150">
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