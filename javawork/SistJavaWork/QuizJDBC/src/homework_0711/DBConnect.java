package homework_0711;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnect {
	
	static final String URL="jdbc:oracle:thin:@localhost:1521:XE";

	String driver="oracle.jdbc.driver.OracleDriver";
	
	public DBConnect() {
		try {
			Class.forName(driver);
			System.out.println("오라클 드라이버 성공!!!");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("오라클 드라이버 실패!!!");
		}
	}
	
	public Connection getConnection()
	{
		Connection conn=null;
		
		try {
			conn=DriverManager.getConnection(URL, "tjdgus", "1234");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public void dbClose(ResultSet rs,PreparedStatement pstmt,Connection conn)
	{
		try {
			rs.close();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void dbClose(PreparedStatement pstmt,Connection conn)
	{
		try {
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
