<%@page import="model.sinsang.SinsangDao"%>
<%@page import="model.sinsang.SinsangDto"%>
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
<%-- 폼을 처리하는 곳(값을 넘겨줄 곳) --%>
	<%
		//폼에 있는 name,addr
		String name=request.getParameter("name");
		String addr=request.getParameter("addr");
		
		
		// 입력데이터를 dto로 묶어서
		SinsangDto dto=new SinsangDto();
		// 이름,주소 입력
		dto.setName(name);
		dto.setAddr(addr);
		
		
		// insert메소드 전달 / 인자값인 dto를 호출하기 위해 생성
		SinsangDao dao=new SinsangDao();
		// 입력한 값을 dao에 넣어줌
		dao.insertSinsang(dto);
		
		
		//출력 jsp로 이동(redirect)...url이 바뀜
		//request한 값을 response 하겠다 > url로 sendRedirect 해주겠다 / redirect는 url을 바꿔줌
		//(값 입력해주고 전송 누르면 sqldeveloper 확인하면 값 입력됨)
		//이걸 안해주면 action파일에 남아있어서 오류
		response.sendRedirect("list.jsp");
	%>
</body>
</html>