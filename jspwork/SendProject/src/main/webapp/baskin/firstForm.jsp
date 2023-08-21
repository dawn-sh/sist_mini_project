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
<style>
	div.first{
		position: absolute;
		top: 100px;
		left: 700px;
		width: 500px;
		height: 700px;
		border-radius: 20px;
		border: 5px solid pink;
		font-family: "BaskinRobbins"
	}
	
	.btn1{
		position: absolute;
		width: 300px;
		height: 150px;
		top: 350px;
		left: 95px;
		padding: 10px;
		border: 5px solid white;
		border-radius: 15px 15px 15px;
		background-color: #ffb6c1;
		border-color: #ffffff;
		color: #ffffff;
		font-size: 60px;
	}
	
	.btn2{
		position: absolute;
		width: 100px;
		top: 630px;
		left: 380px;
		padding: 10px;
		border: 5px solid white;
		border-radius: 15px 15px 15px;
		background-color: #ffb6c1;
		border-color: #ffffff;
		color: #ffffff;
	}
	
	.btn1:hover,.btn2:hover{
      background-color:#ffe4e1;
      transition: 0.7s;
    }
	.logo{
		position: absolute;
		top: 80px;
		left: 45px;
	}
	
	.logo2{
		position: absolute;
		top: 10px;
		left: 330px;
		width: 150px;
	}
</style>
</head>
<body>
	<div class="first">
		<img src="../베스킨라빈스/로고.jpg" class="logo">
		<img src="../베스킨라빈스/로고2.png" class="logo2">
		<button type="button" class="btn1" onclick="location.href='secondForm.jsp'">시작하기</button>
		<button type="button" class="btn2" onclick="location.href='loginForm.jsp'">관리자보기</button>
	</div>
</body>
</html>