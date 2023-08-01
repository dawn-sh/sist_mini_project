<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.sql.SQLException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle_db.DBConnect"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 오라클테이블을 xml로 만들 때 위 주소들 말고는 있으면 안된다/
	 contentType에서 text/xml로 바꿔줘야한다
	 여기서 자바를 쓰기 위해 jsp파일로 만들고 xml을 만든다 --%>
<%-- data의미는 없지만 태그 보고 알기 위해 data라고 함 --%>
<data>
	<%
		DBConnect db=new DBConnect();
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select * from team order by num";
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
		
		/* 자바형식을 쓸 수 있지만 자바는 아니라 try/catch 직접 해줘야함 */
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				String num=rs.getString("num");
				String name=rs.getString("name");
				String addr=rs.getString("addr");
				//그냥 rs.getDate로 쓰면 에러나서 sdf.format으로 받아준다
				String writeday=sdf.format(rs.getTimestamp("writeday"));
				
				%>
				<%-- parsing : sqltable을 xml형식으로 바꿔주는 것 --%>
				<%-- parsing은 자바형식이 아니라서 닫아줘야함 --%>
				<%-- ajax로 읽어들이기 위해서는 sqltable을 parsing을 해줘서 xml형식으로 바꿔줘야함 --%>
				<team num="<%=num%>">
					<name><%=name %></name>
					<addr><%=addr %></addr>
					<writeday><%=writeday %></writeday>
				</team>
				
			<%}
		
		}catch(SQLException e){
			
		}finally{
			db.dbClose(rs, pstmt, conn);
		}
	%>
</data>