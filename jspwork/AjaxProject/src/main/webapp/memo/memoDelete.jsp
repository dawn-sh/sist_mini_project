<%@page import="db.memo.MemoDto"%>
<%@page import="db.memo.MemoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemoDao dao=new MemoDao();

	//function list() span 태그에 있는 num값을 가져온다
	String num=request.getParameter("num");
	
	dao.deleteMemo(num);
%>