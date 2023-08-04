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
<script type="text/javascript">
   $(function() {
      $("#hp2").on('keyup',function(){
            if(this.value.length==4){
               $("#hp3").focus();
            }
      })
   })
</script>
</head>
<body>
<form action="insertAction.jsp" method="post">
	<table class="table table-bordered" style="width: 500px;">
		<b>개인정보 입력창</b>
		<tr>
			<th>이름</th>
			<td>
				<input type="text" name="name" class="form-control"
				required="required" style="width: 150px;" placeholder="이름">
			</td>
		</tr>
		
		<tr>
			<th>혈액형</th>
			<td>
			<select	name="blood">
				<option value="A형">A형</option>
				<option value="AB형">AB형</option>
				<option value="B형">B형</option>
				<option value="O형">O형</option>
			</select>
			</td>
		</tr>
		
		<tr>
			<th>전화번호</th>
			<td>
				<select name="hp1">
					<option value="010">010</option>
					<option value="02">02</option>
					<option value="031">031</option>
					<option value="011">011</option>
					<option value="016">016</option>
				</select>
				<b>-</b>
				<input type="tel" name="hp2" size="4" maxlength="4"
				required="required" style="width: 100px;" placeholder="가운데 자리" id="hp2">
				<b>-</b>
				<input type="tel" name="hp3" size="4" maxlength="4"
				required="required" style="width: 100px;" placeholder="마지막 자리" id="hp3">
			</td>
		</tr>
		
		<tr>
			<th>도시</th>
			<td>
				<input type="radio" name="city" value="서울">서울
				<input type="radio" name="city" value="부산">부산
				<input type="radio" name="city" value="경기">경기
				<input type="radio" name="city" value="인천">인천
				<input type="radio" name="city" value="제주">제주
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn btn-info">전송</button>
				<button type="button" class="btn btn-success"
				onclick="location.href='list.jsp'">목록</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>