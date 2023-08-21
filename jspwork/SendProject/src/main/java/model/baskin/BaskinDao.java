package model.baskin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import oracle.db.DBConnect;

public class BaskinDao {
	
	DBConnect db=new DBConnect();
	
	public void insertBaskin(BaskinDto dto)
	{
	    Connection conn=db.getConnection();
	    PreparedStatement pstmt=null;
	      
	    String sql="insert into baskin values(seq_baskin.nextval,?,?,?,?,?,?,sysdate)";
	      
	    try {
	       pstmt=conn.prepareStatement(sql);
	         
	       pstmt.setString(1, dto.getKinimage1());
	       pstmt.setString(2, dto.getKinimage2());
	       pstmt.setString(3, dto.getKinimage3());
	       pstmt.setString(4, dto.getKinimage4());
	       pstmt.setString(5, dto.getMtime());
	       pstmt.setString(6, dto.getSpoon());
	         
	       pstmt.execute();
	         
	    } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    } finally {
	      db.dbClose(pstmt, conn);
	    }
	}
	
	public boolean isLogin(String id,String pass)
	{
		boolean flag=false;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from admin_baskin where id=? and pass=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs=pstmt.executeQuery();
			
			if(rs.next())
				flag=true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		return flag;
	}
	
	public String getName(String id)
	{
		String name="";
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from admin_baskin where id=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next())
				name=rs.getString("name");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return name;
	}
	
	
	
	public Vector<BaskinDto> getAllDataes()
	{
		Vector<BaskinDto> list=new Vector<BaskinDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from baskin order by num";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				BaskinDto dto=new BaskinDto();
				
				dto.setNum_baskin(rs.getString("num"));
				dto.setKinimage1(rs.getString("kinimage1"));
				dto.setKinimage2(rs.getString("kinimage2"));
				dto.setKinimage3(rs.getString("kinimage3"));
				dto.setKinimage4(rs.getString("kinimage4"));
				dto.setMtime(rs.getString("mtime"));
				dto.setSpoon(rs.getString("spoon"));
				dto.setOdate(rs.getTimestamp("odate"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		return list;
	}
	
	public void deleteBaskin(String num)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="delete from baskin where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
}
