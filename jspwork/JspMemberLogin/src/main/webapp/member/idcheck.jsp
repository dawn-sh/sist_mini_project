<%@page import="member.model.MemberDao"%>
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
</head>
<body>
<%
	String key=request.getParameter("key"); //처음 호출 시 null이라고 생각하면 된다
	
	if(key==null)
	{ //null일 경우에는 폼을 나타낸다
	%>
		<div style="margin: 10px 30px;">
			<%-- 해당 폼에서 바로 결과창이 나오게 하려고 action을 동일한 곳에 넣어줌 --%>
			<form action="idcheck.jsp" method="post" class="form-inline">
				<b>아이디를 입력 주세요</b><br><br>
				<input type="text" name="id" class="form-control"
				style="width: 120px; float: left;">
				<%-- key값을 넘겨주기 위해서 만든 input / value는 의미없는 값이지만 yes로 넣어줌
					 key값은 window.open에서 흔하게 값 넘겨주는 값/무언가의 값을 보내기 위해서 사용
					 hidden을 준 이유는 안보이게 연결해주기 위해서
					 
					 즉 처음 key값은 null인데 빈 혹은 아무 value값을 줘서 중복체크 버튼을 누르면
					 key!=null이 되어 if문에 안걸리고 else로 내려가서 db에 id가 있는지 없는지 비교가능하게 한 것 --%>
				<input type="hidden" name="key" value="yes">
				<button type="submit" class="btn btn-success" style="margin-left: 10px;">중복체크</button>
			</form>
		</div>
	<%}
	else
	{ 
		//action 처리
		
		
		String id=request.getParameter("id");
	
		//dao에서 id 존재유무에 관한 메서드 호출
		MemberDao dao=new MemberDao();
		boolean b=dao.isIdCheck(id);
		
		//id가 존재하는 경우
		if(b)
		{%>
			<div style="margin: 10px 30px;">
				<%-- 위에서 getparameter로 받아온 id --%>
				<h5><%=id %>는 이미 가입된 아이디입니다</h5>
				<img src="../image/b6.png" width="60" align="left">
				<button type="button" class="btn btn-danger btn-xs"
				onclick="location.href='idcheck.jsp'">다시입력</button>
			</div>
		<%}
		else 	//id가 존재하지 않는 경우/db에 존재하지 않아서 사용가능한 아이디
		{%>
			
			
			<div style="margin: 10px 30px;">
				<%-- 위에서 getparameter로 받아온 id --%>
				<h5><%=id %>는 사용 가능한 아이디입니다</h5>
				<img src="../image/b2.png" width="60" align="left">
				<button type="button" class="btn btn-info btn-xs"
				onclick="saveId('<%=id%>')">적용하기</button>
				<button type="button" class="btn btn-danger btn-xs"
				onclick="location.href='idcheck.jsp'">다시입력</button>
			</div>
		<%}
	}
%>

<script type="text/javascript">
	function saveId(id) {
		//alert(id); //id 제대로 넘어오는지 확인
		
		//부모창 : opener
		//현재창의 id를 부모창의 id에 나타내준다
		//==opener.mid.value=id; //id에 id줄시에는 폼아이디 없어도 가능
		//==opener.mfrm.mid.value=id; form id가 있을시 id는 name도 가능
		opener.$("#mid").val(id);
		//현재창 닫기
		window.close();
	}
</script>
</body>
</html>