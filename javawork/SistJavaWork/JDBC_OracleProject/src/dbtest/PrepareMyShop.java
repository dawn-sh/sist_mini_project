package dbtest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class PrepareMyShop {
	
	DBConnect db=new DBConnect();
	Scanner sc=new Scanner(System.in);
	
	//insert
	public void insertMyshop()
	{
		//Connection
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
	
		System.out.println("상품명은?");
		String sang=sc.nextLine();
		System.out.println("수량?");
		int su=Integer.parseInt(sc.nextLine());
		System.out.println("가격?");
		int dan=Integer.parseInt(sc.nextLine());
		
		//sql...PreparedStatement는 미완의 sql문을 작성
		//위에 값을 '""'안에 넣지 않고 ?로 처리
		String sql="insert into myshop values(seq1.nextval,?,?,?,sysdate)";
		
		try {
			pstmt=conn.prepareStatement(sql);//미리 전달하고 ?에 대한 전달이 나중에
			
			//? 순서 중요//?를 순서대로 바인딩
			pstmt.setString(1, sang);//1번째 ?는
			pstmt.setInt(2, su);
			pstmt.setInt(3, dan);
			
			
			//업데이트
			int a=pstmt.executeUpdate();
			
			if(a==1)
				System.out.println("insert 성공!!!");
			else
				System.out.println("insert 실패ㅠㅠ");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public void selectMyshop()
	{
		System.out.println("시퀀스\t상품\t수량\t가격\t입고날짜");
		System.out.println("======================================");
		
		String sql="select * from myshop";
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
	
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				System.out.println(rs.getInt("shopnum")
									+"\t"+rs.getString("sangpum")
									+"\t"+rs.getInt("su")
									+"\t"+rs.getInt("price")
									+"\t"+rs.getDate("ipgo"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
	}
	
	public void deleteMyshop()
	{
		String num;
		
		System.out.println("삭제할 시퀀스는?");
		num=sc.nextLine();
		
		String sql="delete from myshop where shopnum=?";
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, num);
			
			int a=pstmt.executeUpdate();
			
			if(a==1)
				System.out.println("***삭제했어요***");
			else
				System.out.println("없는 데이터 입니다");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public void updateMyshop()
	{
		String num;
		
		System.out.println("수정할 시퀀스는?");
		num=sc.nextLine();
		
		if(!isData(num))
		{
			System.out.println("데이터가 없습니다");
			return;
		}
		
		
		System.out.println("수정할 상품명은?");
		String name=sc.nextLine();
		
		System.out.println("수정할 수량은?");
		String su=sc.nextLine();
		
		System.out.println("수정할 가격은?");
		String price=sc.nextLine();
		
		String sql="update myshop set sangpum=?, su=?, price=? where shopnum=?";
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		try {
			//sql문 전달
			pstmt=conn.prepareStatement(sql);
			
			//? 4개 바인딩
			pstmt.setString(1, name);
			pstmt.setString(2, su);
			pstmt.setString(3, price);
			pstmt.setString(4, num);
			
			
			//업데이트
			int a=pstmt.executeUpdate();
			
			if(a==1)
				System.out.println("***수정되었습니다***");
			else
				System.out.println("데이터에 없습니다");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public boolean isData(String shopnum)
	{
		boolean flag=false;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from myshop where shopnum=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//?
			pstmt.setString(1, shopnum);
			
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
	
	//검색
	public void searchSangpum()
	{
		System.out.println("검색할 상품명(일부단어)");
		String sang=sc.nextLine();
		
		//?를 바인딩할때 정의
		String sql="select * from myshop where sangpum like ?";
		System.out.println(sql);
		
		System.out.println("시퀀그\t상품명\t수량\t단가\t날짜");
		System.out.println("-----------------------------------------------------");
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+sang+"%"); // sangpum의 일부 단어만 포함해도 검색되도록
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				System.out.println(rs.getInt("shopnum")
						+"\t"+rs.getString("sangpum")
						+"\t"+rs.getInt("su")
						+"\t"+rs.getInt("price")
						+"\t"+rs.getDate("ipgo"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
	}
	
	

	public static void main(String[] args) {

		PrepareMyShop shop=new PrepareMyShop();
		//클래스안에 전연변수에 선언해줘도 메인과는 별개라서 출력용 Scanner에 선언
		Scanner sc=new Scanner(System.in);
		int n;
		
		while(true)
		{
			System.out.println("****상품입고****");
			System.out.println("1.상품추가   2.상품삭제   3.상품수정   4.상품전체출력    5.상품검색    9.종료");
			n=Integer.parseInt(sc.nextLine());
			
			if(n==1)
				shop.insertMyshop();
			else if(n==2)
				shop.deleteMyshop();
			else if(n==3)
				shop.updateMyshop();
			else if(n==4)
				shop.selectMyshop();
			else if(n==5)
				shop.searchSangpum();
			else if(n==9)
			{
				System.out.println("종료합니다");
				break;
			}
		}
				
	}

}
