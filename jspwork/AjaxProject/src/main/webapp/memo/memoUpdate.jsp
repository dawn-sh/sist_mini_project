<%@page import="db.memo.MemoDao"%>
<%@page import="db.memo.MemoDto"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemoDao dao=new MemoDao();

	request.setCharacterEncoding("utf-8");


	//수정버튼 동적이벤트로 이미 값들을 넣어줬기 때문에(이벤트시 값 넘겨줌)
	//update의 값을 받아올때 updateform 값을 받아와 적용할 수 있다
	String uwriter=request.getParameter("uwriter");
	String ustory=request.getParameter("ustory");
	String uavata=request.getParameter("uavata");
	String unum=request.getParameter("unum");
	
	MemoDto dto=new MemoDto();

	dto.setWriter(uwriter);
	dto.setStory(ustory);
	dto.setAvata(uavata);
	dto.setNum(unum);
	//insert호출
	dao.updateMemo(dto);
%>

<%=dto.toString()%>