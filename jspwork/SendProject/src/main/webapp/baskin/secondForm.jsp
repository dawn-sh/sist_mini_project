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
	
	div.second{
		position: absolute;
		top: 100px;
		left: 700px;
		width: 500px;
		height: 700px;
		border-radius: 20px;
		border: 5px solid pink;
		font-family: "BaskinRobbins"
	}
	
	div.second_1{
		position: absolute;
		top: 10px;
		left: 330px;
	}
	
	div.second_2{
		position: absolute;
		width: 300px;
		height: 45px;
		top: 5px;
		left: 10px;
		border-radius: 20px;
		font-family: "BaskinRobbins";
	}
	
	#sizeimg{
		border-radius: 100%;
		width: 100px;
		cursor: pointer;
	}
	
	table{
		border-collapse: separate;
		border-spacing: 0 15px;
	}
	
	.btn4{
		width: 100px;
	}
	
	.btn3, .btn4{
		background-color: #ffb6c1;
		border-color: #ffffff;
		color: #ffffff;
		padding: 10px;
		font-size: 20px;
		border-radius: 15px 15px 15px;
		border: 5px solid white;
	}
	
	.btn3:hover,.btn4:hover{
      background-color:#ffe4e1;
      transition: 0.7s;
  	}
  	
  	.circle{
  		border: 2px solid #ffb6c1;
  		border-radius: 200px;
  	}
  	
  	#flavorImage{
  		cursor: pointer;
  	}
  	
  	b{
		color: #ffb6c1;
		font-size: 15px;
	}
	
	.btn6{
		background-color: #ffb6c1;
		border-color: #ffffff;
		color: #ffffff;
		padding: 2px;
		font-size: 10px;
		border-radius: 15px 15px 15px;
		border: 5px solid white;
		height: 35px;
		width: 80px;
	}
	
</style>
<script type="text/javascript">
	$(function(){
		$(".qmark").hide();
        var flag = false; // 사이즈 선택 여부를 저장하는 변수

        // 사이즈 선택 처리
        $("#sizeimg").click(function () {
            $(this).toggleClass("circle");
            $(".qmark").toggle();
            flag = true; // 사이즈 선택 여부 변경
        });

        // 맛 선택 처리
        var selectedFlavors = []; // 선택한 맛 순서를 저장하는 배열

        $(".flavor-image").click(function () {
            if (flag) { // 사이즈가 선택되었을 때만 처리
                var flavorNumber = $(this).data("flavor");
                selectedFlavors.push(flavorNumber);
                
                // 선택한 아이스크림 값을 각각의 input 요소의 value로 설정
                $("input[name='selectedFlavor1']").val(selectedFlavors[0] || "");
                $("input[name='selectedFlavor2']").val(selectedFlavors[1] || "");
                $("input[name='selectedFlavor3']").val(selectedFlavors[2] || "");
                $("input[name='selectedFlavor4']").val(selectedFlavors[3] || "");

                // 물음표 이미지 변경
                $(".qmark img").eq(selectedFlavors.length - 1).attr("src", "../베스킨라빈스/" + flavorNumber + ".png");
            }
        });
        
        $(".btn4").click(function(){
        	$("#sizeimg").removeClass("circle");
        	$(".qmark").hide();
        	$(".qmark img").attr("src","../베스킨라빈스/물음표.png")
        	$(".spoon").val("1개");
        	$(".mtime").val("0~30분");
        	
        	flag = false; // 사이즈 선택 여부 초기화
       		selectedFlavors = []; // 선택한 맛 초기화
        });
	});
</script>
</head>
<body>
<form action="insertAction.jsp" method="post">
	<div class="second">
		<table style="margin-top: 20px;">
			<tr>
				<td width="80px">&nbsp;&nbsp;사이즈:</td>
				<td><img src="../베스킨라빈스/쿼터.png" id="sizeimg">
				<button type="button" class="btn4">초기화</button><td>
				
			</tr>
			<tr>
				<td>&nbsp;&nbsp;스푼개수:</td>
				<td>
					<select name="spoon" class="spoon">
						<option value="1개">1개
						<option value="2개">2개
						<option value="3개">3개
						<option value="4개">4개
						<option value="5개">5개
						<option value="6개">6개
					</select>
				</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;이동시간:</td>
				<td>
					<select name="mtime" class="mtime">
						<option value="0~30분">0~30분
						<option value="30~60분">30~60분
						<option value="60~90분">60~90분
						<option value="90~120분">90~120분
					</select>
				</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;맛 선택</td>
				<td>
					<%
						for(int i=1;i<=31;i++)
						{%>
							<img src="../베스킨라빈스/<%=i%>.png" style="width: 60px;" class="flavor-image" data-flavor="<%=i%>" id="flavorImage">
						<%}
					%>
				</td>
			</tr>
			<tr>
			<td colspan="2" class="qmark">
				&nbsp;&nbsp;<img src="../베스킨라빈스/물음표.png" style="width: 60px;">&nbsp;&nbsp;
				<img src="../베스킨라빈스/물음표.png" style="width: 60px;">&nbsp;&nbsp;
				<img src="../베스킨라빈스/물음표.png" style="width: 60px;">&nbsp;&nbsp;
				<img src="../베스킨라빈스/물음표.png" style="width: 60px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<input type="hidden" name="selectedFlavor1" value="">
        		<input type="hidden" name="selectedFlavor2" value="">
        		<input type="hidden" name="selectedFlavor3" value="">
        		<input type="hidden" name="selectedFlavor4" value="">
			
				<button type="submit" class="btn3">선택완료</button>
				
			</td>
			</tr>
		</table>
		
		<div class="second_1">
			<img src="../베스킨라빈스/로고2.png" style="width: 150px;">
		</div>
			
		<div class="second_2">
			<button type="button" class="btn6"  style="font-size: 15px;"><p style="margin-bottom: 5px;">step1</p></button>
			<b>주문하실 상품을 선택해주세요</b>
		</div>
	</div>
</form>
</body>
</html>