package Jdbc_sawon;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import homework_0711.DBConnect;

public class SawonCRUD {

	Jdbc_sawon.DBConnect db=new Jdbc_sawon.DBConnect();
	Scanner sc=new Scanner(System.in);
	
	public void addSawon()
	{
		System.out.println("***사원 추가하기***");
		
		System.out.println("사원명?");
		String name=sc.nextLine();
		System.out.println("부서명?");
		String buseo=sc.nextLine();
		System.out.println("성별(여자 or 남자)?");
		String gender=sc.nextLine();
		System.out.println("급여?");
		int pay=Integer.parseInt(sc.nextLine());
		
		//순서 반드시 맞춰서 넣어야함
		String sql="insert into sawon values(seq_sawon.nextval,'"+name+"','"+gender+"','"+buseo+"','"+pay+"')";
		System.out.println(sql);
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		
		try {
			stmt=conn.createStatement();
			stmt.execute(sql); //sql문실행
			
			System.out.println("DB에 추가되었습니다");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(stmt, conn);
		}
	}
	
	public void writeSawon()
	{
		String sql="select num,name,gender,buseo,to_char(pay,'l999,999,999') pay from sawon";
		
		System.out.println("\t\t[전체사원명단]");
		System.out.println();
		
		System.out.println("시퀀스\t사원명\t성별\t부서명\t월급여");
		System.out.println("------------------------------------------------------");
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while(rs.next())
			{
				System.out.println(rs.getInt("num")+"\t"+rs.getString("name")
				                   +"\t"+rs.getString("gender")
				                   +"\t"+rs.getString("buseo")
				                   +"\t"+rs.getString("pay"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, stmt, conn);
		}
	}
	
	//삭제...사원명을 입력하면 삭제
	public void deleteSawon()
	{
		System.out.println("삭제할 사원명은?");
		String name=sc.nextLine();
		
		String sql="delete from sawon where name='"+name+"'";
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		
		try {
			stmt=conn.createStatement();
			stmt.execute(sql);
			
			System.out.println("DELETE SUCCESS");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(stmt, conn);
		}
	}
	
	//수정 시퀀스 입력후 부서,급여만 변경
	public void updateSawon()
	{
		System.out.println("수정할 시퀀스는?");
		String num=sc.nextLine();
		
		System.out.println("수정할 부서는?");
		String buseo=sc.nextLine();
		
		System.out.println("수정할 급여는?");
		String pay=sc.nextLine();
		
		String sql="update sawon set buseo='"+buseo+"', pay="+pay+"where num='"+num+"'";
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		
		try {
			stmt=conn.createStatement();
			stmt.execute(sql);
			
			System.out.println("변경 성공");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(stmt, conn);
		}
	}
	
	public void searchSawon()
	{
		System.out.println("검색할 사원명은?");
		String name=sc.nextLine();
		
		System.out.println("시퀀스\t이름\t성별\t부서\t급여");
		System.out.println("--------------------------------------");
		
		String sql="select * from sawon where name like '%"+name+"%'";
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			System.out.println("검색완료");
			
			while(rs.next())
			{
				System.out.println(rs.getInt("num")+"\t"+rs.getString("name")
                +"\t"+rs.getString("gender")
                +"\t"+rs.getString("buseo")
                +"\t"+rs.getString("pay"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, stmt, conn);
		}
	}
	
	public static void main(String[] args) {

		//클래스생성
		SawonCRUD s=new SawonCRUD();
		//scanner생성
		Scanner sc=new Scanner(System.in);
		int n;
		
		while(true)
		{
			System.out.println("Oracle Db_Sawon문제");
			System.out.println("1.insert  2.select  3.update  4.delete  5.사원검색  9.종료");
			
			n=Integer.parseInt(sc.nextLine());
			
			if(n==1)
				s.addSawon();
			else if(n==9)
			{
				System.out.println("종료");
				break;
			}
			else if(n==2)
				s.writeSawon();
			else if(n==3)
				s.updateSawon();
			else if(n==4)
				s.deleteSawon();
			else if(n==5)
				s.searchSawon();
		}
	}

}
