<%@page import="model.mymall.MallDto"%>
<%@page import="model.mymall.MallDao"%>
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
<%
	String no=request.getParameter("no");
	MallDao dao=new MallDao();
	MallDto dto=dao.getData(no);
%>
<body>
	<form action="updateAction.jsp" method="post">
	<input type="hidden" name="no" value="<%=no%>">
		<table class="table table-bordered" style="width: 400px;">
			<tr>
				<th>상품명</th>
				<td>
					<input type="text" name="name" class="form=control"
					required="required" style="width: 120px;" placeholder="상품명"
					value="<%=dto.getSangpum()%>">
				</td>
			</tr>
			
			<tr>
				<th>상품사진</th>
				<td>
					<select name="photo" id="photo">
						<option value="../image/1.jpg"
						<%=dto.getPhoto().equals("../image/1.jpg")?"selected":""%>>머플러</option>
						<option value="../image/3.jpg"
						<%=dto.getPhoto().equals("../image/3.jpg")?"selected":""%>>모자</option>
						<option value="../image/11.jpg"
						<%=dto.getPhoto().equals("../image/11.jpg")?"selected":""%>>로퍼</option>
						<option value="../image/20.jpg"
						<%=dto.getPhoto().equals("../image/20.jpg")?"selected":""%>>시계</option>
						<option value="../image/31.jpg"
						<%=dto.getPhoto().equals("../image/31.jpg")?"selected":""%>>자켓</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<th>가격</th>
				<td>
					<input type="text" name="price" class="form=control"
					required="required" style="width: 120px;" placeholder="가격"
					value="<%=dto.getPrice()%>">
				</td>
			</tr>
			
			<tr>
				<th>입고일</th>
				<td>
					<input type="date" name="ipgoday" class="form=control"
					required="required" style="width: 120px;" placeholder="입고일"
					value=<%=dto.getIpgoday() %>>
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-warning">상품수정</button>
					
					<button type="button" class="btn btn-success"
					onclick="location.href='list.jsp'">목록</button>
				</td>
			</tr>
		</table>
	</form>
	
	<img src="" id="selphoto">
	
	<script>
		$("#selphoto").attr("src", $("#photo").val());
	
		$("#photo").change(function(){
			var img=$(this).val();
			
			$("#selphoto").attr("src",img);
		})
		
	</script>
</body>
</html>