<%@page import="db.memo.MemoDao"%>
<%@page import="db.memo.MemoDto"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemoDao dao=new MemoDao();

	request.setCharacterEncoding("utf-8");


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