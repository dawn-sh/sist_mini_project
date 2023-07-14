package dbtest;

import java.awt.Taskbar.State;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class CRUDTest {

	   DBConnect db=new DBConnect();
	   
	   //insert
	   
	   public void insert()
	   {
	      
	      Scanner sc=new Scanner(System.in);
	      
	      System.out.println("이름입력");
	      String name=sc.nextLine();
	      System.out.println("주소입력");
	      String addr=sc.nextLine();
	      
	      //sql문에는 ''을 써서 실행시키고 java에서는 ""로 사용하기때문에 '"를 잘 구분해서 사용해야한다
	      String sql="insert into myinfo values (seq1.nextval,'"+name+"','"+addr+"',sysdate)";
	      
	      //1. db연결
	      Connection conn=db.getConnection();
	      //2. statement
	      Statement stmt=null;
	      
	      try {
	         stmt=conn.createStatement();
	         stmt.execute(sql);
	         
	         System.out.println("***정보가 추가되었습니다***");
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	         System.out.println("insert error"+e.getMessage());
	      } finally {
	         db.dbClose(stmt, conn);
	      }
	      
	   }
	   
	   //select
	   public void select()
	   {
		   System.out.println("시퀀스\t이름\t주소\t날짜");
		   System.out.println("=================================");
		   
		   //요청한 sql문을 String에 저장
		   String sql="select * from myinfo order by num";
		   
		   //Connection
		   Connection conn=null;
		   Statement stmt=null;
		   ResultSet rs=null; //조회출력이므로 필요
		   
		   conn=db.getConnection();
		   try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			//2개 이상일 경우 while문
			//resultset객체의 next이용해서 행을 선택하고 get메서드를 이용해서 테이블의 컬럼 값을 얻는다
			while(rs.next())
			{
				System.out.println(rs.getInt("num")
									+"\t"+rs.getString("name")
									+"\t"+rs.getString("addr")
									+"\t"+rs.getDate("sdate"));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, stmt, conn);
		}
	   }
	   
	   //delete
	   public void delete()
	   {
		   //시퀀스 입력 후 삭제
		   Scanner sc=new Scanner(System.in);
		   String num;
		   
		   System.out.println("삭제할 시퀀스는?");
		   num=sc.nextLine();
		   
		   String sql="delete from myinfo where num="+num;
		   
		   //db연결
		   Connection conn=db.getConnection();
		   //statement
		   Statement stmt=null;
		   
		   
		   try {
			stmt=conn.createStatement();
			
			//sql문 실행
			int a=stmt.executeUpdate(sql); //execute는 boolean 값임//executeUpdate는 성공한 갯수 반환 가능
										   //둘다 사용해도 상관없음
			
			if(a==0) //없는 번호 입력시 실제 삭제가 되지않으므로 0반환
				System.out.println("없는 데이터 번호입니다");
			else //삭제성공되면 1 반환 (boolean으로 0,1 false,true 이기 때문
				System.out.println("****삭제되었습니다****");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   }
	   
	   //update
	   public void update()
	   {
		   //수정할 시퀀스 입력 후 이름, 주소 입력
		   Scanner sc=new Scanner(System.in);
		   String num;
		   
		   System.out.println("수정할 시퀀스는?");
		   num=sc.nextLine();
		   
		   //boolean메서드 가져와서 실행
		   if(!this.isData(num))
		   {
			   System.out.println("해당 번호는 존재하지 않습니다");
			   return; //메서드 종료
		   }
		   
		   
		   
		   System.out.println("수정할 이름은?");
		   String name=sc.nextLine();
		   System.out.println("수정할 주소는?");
		   String addr=sc.nextLine();
		   
		   //sql//where문 적을때 1칸띄워야하니까 '뒤에 스페에스1칸
		   String sql="update myinfo set name='"+name+"',addr='"+addr+"' where num="+num;
		   
		   System.out.println(sql);
		   
		   //db연결
		   Connection conn=db.getConnection();
		   //statement
		   Statement stmt=null;
		   
		   try {
			stmt=conn.createStatement();
			
			int a=stmt.executeUpdate(sql);
			
			//update sql문시 없는 번호면 출력 안되야하는데 데이터 전부 입력해야 뜨기때문에 밑에 boolean메서드 활용해서 위에 조건추가
			if(a==0)
				System.out.println("수정할 데이터가 존재하지 않습니다");
			else
				System.out.println("**수정되었습니다**");
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("update error: "+e.getMessage());
		}finally {
			db.dbClose(stmt, conn);
		}
	   }
	   
	   //update할 때 없는 번호인지 있는 번호인지 찾아주기
	   public boolean isData(String num)
	   {
		   //num에 해당하는 데이터가 있으면 true, 없으면 false
		   boolean flag=false;
		   
		   String sql="select * from myinfo where num="+num;
		   
		   Connection conn=db.getConnection();//null;도 가능
		   Statement stmt=null;
		   ResultSet rs=null;
		   
		   try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			//1개데이터일 경우는 if문
			if(rs.next()) //데이터가 있는 경우
				flag=true;
			else //데이터가 없는 경우
				flag=false;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, stmt, conn);
		}
		   
		   return flag;
	   }
	   
	   
	   
	   
	   public static void main(String[] args) {
	      // TODO Auto-generated method stub
	      
	      CRUDTest crud=new CRUDTest();
	      
	      Scanner sc=new Scanner(System.in);
	      int n;
	      
	      while(true)
	      {
	         System.out.println("***Oracle db 연습_myinfo***");
	         System.out.println("1.insert 2.select 3.delete 4.update 9.종료");
	         
	         n=Integer.parseInt(sc.nextLine());
	         
	         if(n==1)
	            crud.insert();
	         else if(n==9)
	         {
	            System.out.println("프로그램 종료");
	            break;
	         }
	         
	         else if(n==2)
	        	crud.select();
	         else if(n==3)
	        	crud.delete();
	         else if(n==4)
	        	crud.update();
	         
	      }
	      
	   }

	}