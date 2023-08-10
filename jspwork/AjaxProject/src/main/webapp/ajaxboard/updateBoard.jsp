<%@page import="db.ajaxboard.AjaxBoardDao"%>
<%@page import="db.ajaxboard.AjaxBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

AjaxBoardDao dao=new AjaxBoardDao();

	request.setCharacterEncoding("utf-8");

String uwriter=request.getParameter("uwriter");
String usubject=request.getParameter("usubject");
String ustory=request.getParameter("ustory");
String uavata=request.getParameter("uavata");
String unum=request.getParameter("unum");

AjaxBoardDto dto=new AjaxBoardDto();

dto.setWriter(uwriter);
dto.setSubject(usubject);
dto.setStory(ustory);
dto.setAvata(uavata);
dto.setNum(unum);
//insert호출
dao.updateBoard(dto);
%>