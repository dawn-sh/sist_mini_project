package homework_0711;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class homework0711 {
	
	DBConnect db=new DBConnect();
	Scanner sc=new Scanner(System.in);
	
	public void insertMystudent()
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.println("학생명은?");
		String name=sc.nextLine();
		System.out.println("학번은?");
		String grade=sc.nextLine();
		System.out.println("휴대폰 번호는?");
		String hp=sc.nextLine();
		System.out.println("주소는?");
		String addr=sc.nextLine();
		System.out.println("나이는?");
		int age=Integer.parseInt(sc.nextLine());
		
		String sql="insert into mystudent values(seq_stu.nextval,"
												+ "?,?,?,?,?,sysdate)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, grade); //insert는 정의된 값이라 정의된 값만 넣어야함
			pstmt.setString(3, hp);
			pstmt.setString(4, addr);
			pstmt.setInt(5, age);
			
			int a=pstmt.executeUpdate();
			
			if(a==1)
				System.out.println("insert SUCCESS");
			else
				System.out.println("insert FAIL");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public void selectMystudent()
	{
		System.out.println("SEQUENCE\tNAME\tGRADE\tHP\tADDR\tAGE\tDATE");
		System.out.println("-----------------------------------------------------------------");
		
		String sql="select * from mystudent";
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				System.out.println(rs.getInt("stu_num")
									+"\t"+rs.getString("stu_name")
									+"\t"+rs.getInt("stu_grade")
									+":학년\t"+rs.getString("hp")
									+"\t"+rs.getString("addr")
									+"\t"+rs.getInt("age")
									+"\t"+rs.getDate("sdate"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
	}
	
	public void deleteMystudent()
	{
		String num;
		
		System.out.println("삭제할 학생 번호는?");
		num=sc.nextLine();
		
		String sql="delete from mystudent where stu_num=?";
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, num);
			
			int a=pstmt.executeUpdate();
			
			if(a==1)
				System.out.println("DELETE SUCCESS");
			else
				System.out.println("DELETE FAIL");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public void updateMystudent()
	{
		System.out.println("수정할 학생번호는?");
		String num=sc.nextLine();
		
		if(!isData(num))
		{
			System.out.println("학생 정보가 없습니다");
			return;
		}
		
		System.out.println("수정할 학생 이름은?");
		String name=sc.nextLine();
		System.out.println("수정할 학생 학년은?");
		String grade=sc.nextLine();
		System.out.println("수정할 학생 번호는?");
		String hp=sc.nextLine();
		System.out.println("수정할 학생 주소는?");
		String addr=sc.nextLine();
		System.out.println("수정할 학생 나이는?");
		String age=sc.nextLine();
		
		String sql="update mystudent set stu_name=?, stu_grade=?,"
					+"hp=?, addr=?, age=? where stu_num=?";
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, grade);
			pstmt.setString(3, hp);
			pstmt.setString(4, addr);
			pstmt.setString(5, age);
			pstmt.setString(6, num);
			
			int a=pstmt.executeUpdate();
			
			if(a==1)
				System.out.println("UPDATE SUCCESS");
			else
				System.out.println("UPDATE FAIL");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	
	public boolean isData(String stu_num) {
		
		boolean flag = false;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from mystudent where stu_num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, stu_num);
			
			rs=pstmt.executeQuery();
			
			if(rs.next())
				flag=true;
			else
				flag=false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return flag;
	}
	
	public void searchMystudent()
	{
		System.out.println("검색할 학생명");
		String name=sc.nextLine();
		
		String sql="select * from mystudent where stu_name like ?";
		System.out.println(sql);
		
		System.out.println("SEQUENCE\tNAME\tGRADE\tHP\tADDR\tAGE\tDATE");
		System.out.println("-----------------------------------------------------------------");
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+name+"%");
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				System.out.println(rs.getInt("stu_num")
						+"\t"+rs.getString("stu_name")
						+"\t"+rs.getInt("stu_grade")
						+":학년\t"+rs.getString("hp")
						+"\t"+rs.getString("addr")
						+"\t"+rs.getInt("age")
						+"\t"+rs.getDate("sdate"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
	}

	public static void main(String[] args) {
		homework0711 s=new homework0711();
		Scanner sc=new Scanner(System.in);
		int n;
		
		while(true)
		{
			System.out.println("****학생정보****");
			System.out.println("1.INSERT   2.SELECT   3.DELETE  4.UPDATE   5.SEARCH   9.EXIT");
			n=Integer.parseInt(sc.nextLine());
			
			if(n==1)
				s.insertMystudent();
			else if(n==9)
			{
				System.out.println("끝!");
				break;
			}
			else if(n==2)
				s.selectMystudent();
			else if(n==3)
				s.deleteMystudent();
			else if(n==4)
				s.updateMystudent();
			else if(n==5)
				s.searchMystudent();
					
		}
	}

}
