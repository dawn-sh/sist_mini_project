<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle_db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* json parsing */
	DBConnect db=new DBConnect();
	Connection conn=db.getConnection();
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	String sql="select * from info order by num";
	
	/* 시초값 자체가 json시작의 '[' 표현 */
	String s="[";
	
	try{
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	
	while(rs.next())
	{
		String num=rs.getString("num");
		String name=rs.getString("name");
		String hp=rs.getString("hp");
		String age=rs.getString("age");
		String photo=rs.getString("photo");
		
		s+="{";
		s+="\"num\":"+num+",\"name\":\""+name+"\",\"hp\":\""+hp;
		s+="\",\"age\":"+age+",\"photo\":\""+photo+"\"";
		s+="},";
	}
	
	//마지막 컴마 제거
	//substring(시작인덱스 번호, 길이-1) 해줘야 ',' 제거
	s=s.substring(0, s.length()-1);
	
	}catch(SQLException e){
		
	}finally{
		db.dbClose(rs, pstmt, conn);
	}
	
	s+="]";
%>

<%-- json,xml 할때 출력창에 주석 안보이게 하기 --%>
<%-- 브라우저 출력 --%>
<%=s%>