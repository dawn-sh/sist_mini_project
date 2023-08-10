<%@page import="org.eclipse.jdt.internal.compiler.util.SimpleLookupTable"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.Vector"%>
<%@page import="db.ajaxboard.AjaxBoardDto"%>
<%@page import="db.ajaxboard.AjaxBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//db에 올바르게 값이 들어갔는지 변환되는지 확인하기 위한 작업
	//이곳에서 run as 해서 json형태로 잘 나왔는지 확인

	AjaxBoardDao db=new AjaxBoardDao();
	
	Vector<AjaxBoardDto> list=db.getAllDates();
	
	JSONArray arr=new JSONArray();

	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	for(AjaxBoardDto dto:list)
	{
		JSONObject ob=new JSONObject();
		
		//key값은 무조건 String 일 수 밖에 없다
		ob.put("num", dto.getNum());
		ob.put("writer", dto.getWriter());
		ob.put("subject", dto.getSubject());
		ob.put("story", dto.getStory());
		ob.put("avata", dto.getAvata());
		ob.put("writeday", sdf.format(dto.getWriteday()));
		
		arr.add(ob);
	}
%>

<%-- 객체가 가진 정보를 String으로 나타내는 것 --%>
<%=arr.toString()%>