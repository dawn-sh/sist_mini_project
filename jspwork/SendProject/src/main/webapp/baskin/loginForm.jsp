<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&family=Diphylleia&family=Dokdo&family=Nanum+Brush+Script&family=Nanum+Gothic+Coding&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://webfontworld.github.io/baskinrobbins/BaskinRobbins.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
	div.loginform{
		position: absolute;
		top: 100px;
		left: 700px;
		width: 500px;
		height: 700px;
		border-radius: 20px;
		border: 5px solid pink;
		font-family: "BaskinRobbins"
	}
	
	div.logpos{
		position: absolute;
		top: 250px;
		left: 150px;
	}
	
	div.second_1{
		position: absolute;
		top: 10px;
		left: 330px;
	}
</style>
</head>
<body>

<div class="loginform">
	<form action="loginAction.jsp" method="post">
		<div class="logpos">
			<h5 align="center"><b>관리자 로그인</b></h5>
			<input type="text" name="id" class="form-control" required="required"
			placeholder="관리자아이디" style="width: 200px"><br>
	
			<input type="password" name="pass" class="form-control" required="required"
			placeholder="비밀번호" style="width: 200px"><br>
	
			<button type="submit" style="width: 200px; background-color: pink; color: white;
			border-radius: 20px; border: 5px solid pink;" id="btn">로그인</button>
		</div>
	</form>
	
	<div class="second_1">
			<img src="../베스킨라빈스/로고2.png" style="width: 150px;">
	</div>
</div>



</body>
</html>