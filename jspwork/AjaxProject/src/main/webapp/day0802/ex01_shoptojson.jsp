<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle_db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	DBConnect db=new DBConnect();
	Connection conn=db.getConnection();
	Statement stmt=null;
	ResultSet rs=null;
	
	String sql="select * from shop order by num";
	
	try{
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		
		/* json 배열로 만들어 주는 메서드 */
		JSONArray arr=new JSONArray();
		
		while(rs.next())
		{
			String num=rs.getString("num");
			String sangpum=rs.getString("sangpum");
			String color=rs.getString("color");
			String price=rs.getString("price");
			String imgname=rs.getString("imgname");
			
			/* object put으로 값을 하나씩 입력해주고 JSONArray에 넣어줘서 JSON형태의 배열로 만들어줌 */
			JSONObject ob=new JSONObject();
			
			ob.put("num", num);
			ob.put("sangpum", sangpum);
			ob.put("color", color);
			ob.put("price", price);
			ob.put("imgname", imgname);
			
			//array에 추가
			arr.add(ob);
		}%>
		
		<%-- 배열형태를 String으로 변환해서 출력해 --%>
		<%=arr.toString() %>
		
	<%}catch(SQLException e){
		
	}
%>