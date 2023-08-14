<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&family=Diphylleia&family=Dokdo&family=Nanum+Brush+Script&family=Nanum+Gothic+Coding&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<script>
	$(function(){
		$("#btnGaip").click(function(){
			
			//id의 id(태그에 준 id)
			if(mfrm.mid.value==0)
			{
				alert("아이디 입력버튼을 눌러주세요");
				//액션 호출 안되게 false return
				return false;
			}
		})
	})
</script>
</head>
<body>
<%-- 부모창(opener)에서 다른 입력창을 띄웠을 때(ex. window.open) 뜨는 창이 자식창

	 빈값인데 required인데도 db에 들어가는 것들(null값으로 들어가는것)은 null값 체크 해야한다(회원가입태그 쪽에 id값주고 function 이벤트로 줘서) --%>
	<div style="margin: 50px; 100px;" class="form-inline">
		<form action="addProc.jsp" method="post" enctype="multipart/form-data" class="form-inline" id="mfrm">
			<table class="table table-bordered" style="width: 500px;">
				<caption align="top"><b>회원가입</b></caption>
				<tr>
					<td style="background-color: #66cdaa" width="120">아이디</td>
					<td>
						<input type="text" class="form-control" name="id" style="width: 120px;"
						<%-- 읽기만 가능/지금은 openwindow로 해결 --%>
						readonly="readonly" required="required" id="mid">
						<button type="button" class="btn btn-danger btn-sm"
						onclick="openId()">아이디입력</button>
					</td>
				</tr>
				
				<tr>
					<td style="background-color: #66cdaa" width="120">비밀번호</td>
					<td>
						<input type="password" class="form-control" style="width: 120px;"
						name="pass" required="required">
					</td>
				</tr>
				
				<tr>
					<td style="background-color: #66cdaa" width="120">이름</td>
					<td>
						<input type="text" class="form-control" style="width: 120px;"
						name="name" required="required">
					</td>
				</tr>
				
				<tr>
					<td style="background-color: #66cdaa" width="120">사진</td>
					<td>
						<input type="file" class="form-control" style="width: 250px;"
						name="uploadImage">
					</td>
				</tr>
				
				<tr>
					<td style="background-color: #66cdaa" width="120">핸드폰</td>
					<td>
						<input type="text" class="form-control" style="width: 120px;"
						name="hp" required="required">
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-info"
						id="btnGaip">회원가입</button>
						<button type="button" class="btn btn-success" onclick="location.href='memberList.jsp'">회원목록</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	<script type="text/javascript">
		function openId() {
			window.open("idcheck.jsp","e","left=400px, top=100px, width=400px, height=250px");
		}
	</script>
</body>
</html>