package day0630;

import java.util.Scanner;

abstract class Command{
	
	public abstract void write(); // ==abstract public void write();
	
}

/////////////////////////////////////////////
class Insert1 extends Command{

	@Override
	public void write() {
		System.out.println("추가합니다");
	}
	
}

/////////////////////////////////////////////
class List extends Command{

	@Override
	public void write() {
		System.out.println("조회합니다");
	}
	
}
/////////////////////////////////////////////
class Modify extends Command{

	@Override
	public void write() {
		System.out.println("수정합니다");
		
	}
	
}
/////////////////////////////////////////////
class Delete1 extends Command{

	@Override
	public void write() {
		System.out.println("삭제합니다");
		
	}
	
}
/////////////////////////////////////////////
public class OracleCRUD_06 {

	public static void main(String[] args) {

		Scanner sc=new Scanner(System.in);
		Command c=null;
		int n;
		
		while(true)
		{
			System.out.println("1.추가  2.조회  3.수정  4.삭제");
			System.out.println("================================");
			n=Integer.parseInt(sc.nextLine());
			
			/*
				if(n==1)
					c=new Insert1();
				else if(n==2)
					c=new List();
				else if(n==3)
					c=new Modify();
				else if(n==4)
					c=new Delete1();
				else
					break;	
					*/
			switch(n)
			{
			case 1:
				c=new Insert1();
				break;
			case 2:
				c=new List();
				break;
			case 3:
				c=new Modify();
				break;
			case 4:
				c=new Delete1();
				break;
			case 9:
				System.out.println("종료합니다");
				System.exit(0);
			default:
				System.out.println("잘 못 입력했어요");	
				break;
			}
			if(n<=4)
				c.write();
		}
	}

}
