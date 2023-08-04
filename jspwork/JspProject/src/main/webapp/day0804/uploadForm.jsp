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
	<form action="uploadAction.jsp" method="post"
	enctype="multipart/form-data">
		<table class="table table-bordered" style="width: 500px;">
			<tr>
				<th width="100">이름</th>
				<td>
					<input type="text" name="name" class="form-control"
					style="width: 150px;">
				</td>
			</tr>
			
			<tr>
				<th width="100">제목</th>
				<td>
					<input type="text" name="title" class="form-control"
					style="width: 350px;">
				</td>
			</tr>
			
			<tr>
				<th width="100">파일</th>
				<td>
					<input type="file" name="uploadFile">
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-success">업로드</button>
				</td>
			</tr>
		</table>
		
		<%-- save파일에는 업로드 되지 않고 실제 업로드 되는 경로
		/Users/sunghyunchoi/Desktop/sist0615/work/jspwork/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/JspProject/save --%>
	</form>
</body>
</html>