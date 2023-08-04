<%@page import="model.intro.IntroDto"%>
<%@page import="model.intro.IntroDao"%>
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
<%
	String num=request.getParameter("num");
	IntroDao dao=new IntroDao();
	IntroDto dto=dao.getData(num);
	
	String arr[]=dto.getHp().split("-");
%>
</head>
<body>
<form action="updateAction.jsp" method="post">
<input type="hidden" name="num" value="<%=num %>">
	<table class="table table-bordered" style="width: 500px;">
		<b>개인정보 입력창</b>
		<tr>
			<th>이름</th>
			<td>
				<input type="text" name="name" class="form-control"
				required="required" style="width: 150px;" placeholder="이름"
				value="<%=dto.getName()%>">
			</td>
		</tr>
		
		<tr>
			<th>혈액형</th>
			<td>
			<select	name="blood">
				<option value="A형"
				<%=dto.getBlood().equals("A형")?"selected":""%>>A형</option>
				<option value="AB형"
				<%=dto.getBlood().equals("AB형")?"selected":""%>>AB형</option>
				<option value="B형"
				<%=dto.getBlood().equals("B형")?"selected":""%>>B형</option>
				<option value="O형"
				<%=dto.getBlood().equals("O형")?"selected":""%>>O형</option>
			</select>
			</td>
		</tr>
		
		<tr>
			<th>전화번호</th>
			<td>
				<select name="hp1">
					<option value="010"
					<%=arr[0].equals("010")?"selected":""%>>010</option>
					<option value="02"
					<%=arr[0].equals("02")?"selected":""%>>02</option>
					<option value="031"
					<%=arr[0].equals("031")?"selected":""%>>031</option>
					<option value="011"
					<%=arr[0].equals("011")?"selected":""%>>011</option>
					<option value="016"
					<%=arr[0].equals("016")?"selected":""%>>016</option>
				</select>
				<b>-</b>
				<input type="text" name="hp2" size="4" maxlength="4"
				required="required" style="width: 100px;" placeholder="가운데 자리" id="hp2"
				value="<%=arr[1]%>">
				<b>-</b>
				<input type="text" name="hp3" size="4" maxlength="4"
				required="required" style="width: 100px;" placeholder="마지막 자리" id="hp3"
				value="<%=arr[2]%>">
			</td>
		</tr>
		
		<tr>
			<th>도시</th>
			<td>
				<input type="radio" name="city" value="서울"
				<%=dto.getCity().equals("서울")?"checked":""%>>서울
				<input type="radio" name="city" value="부산"
				<%=dto.getCity().equals("부산")?"checked":""%>>부산
				<input type="radio" name="city" value="경기"
				<%=dto.getCity().equals("경기")?"checked":""%>>경기
				<input type="radio" name="city" value="인천"
				<%=dto.getCity().equals("인천")?"checked":""%>>인천
				<input type="radio" name="city" value="제주"
				<%=dto.getCity().equals("제주")?"checked":""%>>제주
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn btn-info"
				onclick="location.href='list.jsp'">수정</button>
				<button type="button" class="btn btn-success"
				onclick="location.href='list.jsp'">목록</button>
			</td>
		</tr>
	</table>
</form>

</body>
</html>