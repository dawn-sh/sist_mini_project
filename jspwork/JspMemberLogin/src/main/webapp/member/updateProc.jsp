<%@page import="member.model.MemberDto"%>
<%@page import="member.model.MemberDao"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
<%
	String realPath=getServletContext().getRealPath("/upload");

	int uploadSize=1024*1024*10;
	
	MultipartRequest multi=null;
	
	multi= new MultipartRequest(request,realPath,uploadSize,"utf-8",new DefaultFileRenamePolicy());
	
	//dao선언
	MemberDao dao=new MemberDao();
	//dto
	MemberDto dto=new MemberDto();
	
	//updateForm에서 가져온 값
	//fileupload에서는 multi에 값을 다 설정해줘서 multi.getParameter로 값을 가져와 넣어줘야한다
	dto.setNum(multi.getParameter("num"));
	dto.setId(multi.getParameter("id"));
	dto.setPass(multi.getParameter("pass"));
	dto.setName(multi.getParameter("name"));
	dto.setHp(multi.getParameter("hp"));
	
	String photo=multi.getFilesystemName("uploadImage");
	
	if(photo==null)//사진이 없는 경우
	{
		//list에서 가져온 사진 값을 그대로 가져오기 위해 getData로 해당 num의 image경로를 가져와야함
		String p=dao.getData(dto.getNum()).getImage();
		dto.setImage(p);
	}
	else
		dto.setImage("../upload/"+photo); //사진 선택한 경우
	
	
	
	
	//db에 update
	dao.updateMember(dto);
	
	//성공 후 이동
	response.sendRedirect("memberList.jsp");
%>
</body>
</html>