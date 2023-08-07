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
		//파일이 저장되는 실제 경로 구하기
		ServletContext context=getServletContext();
		String realFolder=context.getRealPath("/save");
		
		//이미지 확인
		System.out.println(realFolder);
		
		//사이즈 어떻게 줄 것인가
		int fileSize=1024*1024*5; //5mb
		
		MultipartRequest multi=null; //try catch에 갇히면 변수 사용 못하기 때문에 null로 먼저 생성해주는 것
		
		try{
		//new DefaultFileRenamePolicy() 같은 이름이 들어가면 자동으로 번호를 매겨줌
		//이건 file에 관한 것이라 try/catch해줘야함
		multi=new MultipartRequest(request,realFolder,fileSize,"utf-8",new DefaultFileRenamePolicy());
				
		//여기 있는 모든 name들은 모두 multi.parameter로 받는다
		String name=multi.getParameter("name");
		String title=multi.getParameter("title");
				
		//getFilesystemName(name) : 실제 업로드된 파일명(동일한이름일경우 변경된 이름반환)//이미지 단독으로1개 받는것
		String uploadFileName=multi.getFilesystemName("uploadFile");
		String originalFileName=multi.getOriginalFileName("uploadFile");
				
		%>
			
			<table class="table table-bordered" style="width: 300px;">
				<tr>
					<th>이름</th>
					<td><%=name %></td>
				</tr>
				
				<tr>
					<th>제목</th>
					<td><%=title %></td>
				</tr>
				
				<tr>
					<%-- 가상의 폴더를 만들어야 넣어줄 수 있음 --%>
					<th>업로드 파일명</th>
					<td><img src="../save/<%=uploadFileName%>"></td>
				</tr>
				
				<tr>
					<th>업로드 파일명</th>
					<%-- 실제 이름이 뭔지 확인 --%>
					<td><%=originalFileName %></td>
				</tr>
				
				<tr>
					<td>
						<input type="button" value="업로드 다시 하기" onclick="location.href='uploadForm.jsp'">
					</td>
				</tr>
			</table>
			
			
		<%}catch(Exception e){
			
		}
	%>
</body>
</html>