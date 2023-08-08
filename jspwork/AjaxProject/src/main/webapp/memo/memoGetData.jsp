<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.memo.MemoDto"%>
<%@page import="db.memo.MemoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemoDao dao=new MemoDao();

	String num=request.getParameter("num");
	
	MemoDto dto=dao.getData(num);
	
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	JSONObject ob=new JSONObject();
	
	
	//""안에 있는 값으로 form으로 띄워야 해당 값을 가져와서 그대로 입력되게 할 수 있다
	ob.put("num",dto.getNum());
	ob.put("writer",dto.getWriter());
	ob.put("story",dto.getStory());
	ob.put("avata",dto.getAvata());
	ob.put("writeday",sdf.format(dto.getWriteday()));
	
	//여기서 run as 해서 table에 있는 num값 확인하고 url마지막에 ?num=해당num값 입력해주면 json 형태의 배열로 만들어졌는지 확인하기
	//값을 가져오는지 확인하기 위해서 위 방법을 사용
%>

<%-- json으로 띄울 경우 string값으로 받아와야하기 때문 --%>
<%=ob.toString()%>