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
<script>
	$(function(){
		$(".third_7").hide();
		$(".btn5").hide();
		
		$("div").click(function(){
			$(".third_7").show();
			$(".btn5").show();
		})
	})
</script>
<style>
	
	div.third{
		position: absolute;
		top: 100px;
		left: 700px;
		width: 500px;
		height: 700px;
		border-radius: 20px;
		border: 5px solid pink;
		font-family: "BaskinRobbins";
	}
	
	div.third_1{
		position: absolute;
		border: 5px solid whitesmoke;
		width: 180px;
		height: 150px;
		top: 100px;
		left: 60px;
		font-family: "BaskinRobbins";
		border-radius: 20px;
		cursor: pointer;
	}
	
	div.third_2{
		position: absolute;
		border: 5px solid whitesmoke;
		width: 180px;
		height: 150px;
		top: 100px;
		left: 260px;
		font-family: "BaskinRobbins";
		border-radius: 20px;
		cursor: pointer;
	}
	
	div.third_3{
		position: absolute;
		border: 5px solid whitesmoke;
		width: 90px;
		height: 150px;
		top: 260px;
		left: 60px;
		font-family: "BaskinRobbins";
		border-radius: 20px;
		cursor: pointer;
	}
	
	div.third_4{
		position: absolute;
		border: 5px solid whitesmoke;
		width: 90px;
		height: 150px;
		top: 260px;
		left: 155px;
		font-family: "BaskinRobbins";
		border-radius: 20px;
		cursor: pointer;
	}
	
	div.third_5{
		position: absolute;
		border: 5px solid whitesmoke;
		width: 90px;
		height: 150px;
		top: 260px;
		left: 255px;
		font-family: "BaskinRobbins";
		border-radius: 20px;
		cursor: pointer;
	}
	
	div.third_6{
		position: absolute;
		border: 5px solid whitesmoke;
		width: 90px;
		height: 150px;
		top: 260px;
		left: 355px;
		font-family: "BaskinRobbins";
		border-radius: 20px;
		cursor: pointer;
	}
	
	div.third_7{
		position: absolute;
		border: 5px solid whitesmoke;
		background-color: whitesmoke;
		width: 450px;
		height: 150px;
		top: 420px;
		left: 20px;
		border-radius: 20px;
		font-family: "BaskinRobbins";
	}
	
	div.third_8{
		position: absolute;
		top: 10px;
		left: 330px;
	}
	
	div.third_9{
		position: absolute;
		width: 300px;
		height: 45px;
		top: 50px;
		left: 30px;
		border-radius: 20px;
		font-family: "BaskinRobbins";
	}
	
	.btn4{
		background-color: #ffb6c1;
		border-color: #ffffff;
		color: #ffffff;
		padding: 2px;
		font-size: 10px;
		border-radius: 15px 15px 15px;
		border: 5px solid white;
		height: 35px;
		width: 80px;
		margin-left: 20px;
	}
	
	b{
		color: #ffb6c1;
	}
	
	.btn5{
		position: absolute;
		width: 300px;
		height: 110px;
		top: 575px;
		left: 110px;
		padding: 5px;
		border: 5px solid white;
		border-radius: 15px 15px 15px;
		background-color: #ffb6c1;
		border-color: #ffffff;
		color: #ffffff;
		font-size: 60px;
	}
	
	.third_1:hover,.third_2:hover,.third_3:hover,.third_4:hover,.third_5:hover,.third_6:hover{
	  background-color: #ff69b4;
      transition: 0.7s;
	}
	
	.btn5:hover{
      background-color:#ffe4e1;
      transition: 0.7s;
 	 }

	
</style>
</head>
<body>

	<div class="third">
		<div class="third_1">
		<img src="../베스킨라빈스/카드.png" style="margin-top: 30px; width: 80px; height: 60px; border-radius: 5px;">
		<img src="../베스킨라빈스/삼성페이.png" style="margin-top: 35px; width: 80px; height: 20px; border-radius: 5px;">
		<p align="center" style="font-size: 20px; margin-top: 10px;">신용카드 / 삼성페이</p>
		</div>
		
		<div class="third_2">
		<img src="../베스킨라빈스/교환.jpeg" style="margin-top: 20px; margin-left: 30px; width: 100px; height: 70px; border-radius: 5px;">
		<p align="center" style="font-size: 20px; margin-top: 10px;">교환권 / 할인쿠폰</p>
		</div>
		
		<div class="third_3">
		<img src="../베스킨라빈스/해피페이.png" style="margin-top: 20px; margin-left: 5px; width: 70px; height: 80px; border-radius: 5px;">
		<p align="center" style="font-size: 20px;">해피페이</p>
		</div>
		
		<div class="third_4">
		<img src="../베스킨라빈스/애플페이.png" style="margin-top: 20px; width: 80px; height: 80px; border-radius: 5px;">
		<p align="center" style="font-size: 20px;">애플페이</p>
		</div>
		
		<div class="third_5">
		<img src="../베스킨라빈스/카카오페이.png" style="margin-top: 20px; margin-left: 5px; width: 70px; height: 80px; border-radius: 5px;">
		<p align="center" style="font-size: 18px; margin-top: 2px;">카카오페이</p>
		</div>
		
		<div class="third_6">
		<img src="../베스킨라빈스/네이버페이.png" style="margin-top: 40px; margin-left: 5px; width: 70px; height: 50px; border-radius: 5px;">
		<p align="center" style="margin-top: 12px; font-size: 18px;">네이버페이</p>
		</div>
		
	 	<div class="third_7">
	 		<h3 style="margin-top: 20px; margin-left: 20px; color: #ff69b4">최종 결제금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;17,000원</h3>
	 		<h4 style="margin-top: 30px; margin-left: 20px;">총 주문금액:&nbsp;&nbsp;17,000원&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;할인 금액:&nbsp;&nbsp;0원</h4>
		</div>
		
		<div class="third_8">
			<img src="../베스킨라빈스/로고2.png" style="width: 150px;">
		</div>
		
		<div class="third_9">
			<button type="button" class="btn4"  style="font-size: 15px;"><p style="margin-bottom: 5px;">step2</p></button>
			<b>결제 수단을 선택해주세요</b>
		</div>

		<button type="button" class="btn5" onclick="location.href='firstForm.jsp'">결제하기</button>

	</div>
</body>
</html>