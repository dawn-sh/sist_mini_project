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
	div.loginform{
		width: 500px;
		margin-top: 100px;
		margin-left: 200px;
	}
</style>
</head>
<body>
<%
	//세션으로부터 아이디 아이디저장(세이브체크)값 얻기 -> 체크박스 여부로 저장하기 위해서 먼저 얻어와야 조건지정가능
	String myid=(String)session.getAttribute("idok");
	//action에 세션지정한 체크값을 saveok로 지정했기에 그 값을 받아와야함
	String saveid=(String)session.getAttribute("saveok");
	
	//save박스 체크했으면
	boolean save=true;
	
	//아이디저장 박스가 체크가 안됐을 경우
	if(saveid==null)
	{
		//아이디 저장이 체크가 안되어있으면(null) 빈 칸이기에 빈값 넣어줌
		myid=""; //아이디저장을 체크하지 않을 경우 아이디 없앤다 / 체크 되어있을 경우 아이디는 그대로 남아있다
		save=false; //체크하지 않을 경우 false,그 이외에는 true니까 true가 된다
	}
%>
	<div class="loginform">
		<form action="loginAction.jsp" method="post">
			<input type="text" name="id" style="width: 200px;"
			class="form-control" placeholder="로그인할아이디" required="required"
			value="<%=myid%>"><br>
			<input type="password" name="pass" style="width: 200px;"
			class="form-control" placeholder="로그인할 비밀번호" required="required"><br>
			
			<button type="submit" class="btn btn-success btn-lg"
			style="width: 200px;">로그인</button>
			<br>
			
			<%-- save는 유지 되어야해서 시간설정을 줘야한다 --%>
			<%-- value값이 없으면 on null로 나옴 --%>
			<input type="checkbox" name="savechk"
			<%-- 자바에서 준 boolean save가 체크 되어있으면 체크 아니면 빈값 --%>
			<%=save?"checked":"" %>>아이디저장
		</form>
	</div>
</body>
</html>