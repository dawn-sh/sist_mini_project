package day0704;

import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;
import java.util.Vector;

public class VectorBoard_02 {
	
	//Vector<Board> list=new Vector<Board>();
	//가변의 빈 컨테이너 생성
	List<Board> list=new Vector<Board>();
	//유형을 클래스 타입으로 지정했으므로 데이터를 꺼내고 받을 때도 클래스
	
	//입력
	public void inputBoard()
	{
		Scanner sc=new Scanner(System.in);
		String writer,subject,content;
		
		System.out.println("작성자명?");
		writer=sc.nextLine();
		System.out.println("제목?");
		subject=sc.nextLine();
		System.out.println("내용?");
		content=sc.nextLine();
		
		//값을 입력해야지 생성해서 받아올 수 있기 때문에 밑에 생성
		//==Board data=new Board(writer, subject, content);//클래스 생성
		Board data=new Board();
		data.setWriter(writer);
		data.setSubject(subject);
		data.setContent(content);
		
		list.add(data); //클래스로 생성된 것을 클래스에 담는다
		
		System.out.println("현재데이터 갯수: "+list.size());
	}
	
	//출력
	public void writeBoard()
	{
		System.out.println("****게시판****");
		System.out.println("======================================");
		
		for(int i=0;i<list.size();i++)
		{
			Board b=list.get(i); //클래스로 반환되기 때문에 클래스에 값 넣어줘야함
								 //리스트 내에 지정된 위치에 있는 요소 값을 돌려준다
			//위에 input으로 set에 값을 넣고 list에 넣었으니 클래스 생성해서 get으로 값 넣어주면 출력
			System.out.println("번호"+(i+1)+"\t작성자: "+b.getWriter());
			System.out.println("제목: "+b.getSubject());
			System.out.println("내용: "+b.getContent());
			System.out.println("------------------------------------------");
		}
	}
	
	

	public static void main(String[] args) {
		
		//메서드가 같은 클래스라도 static이 아니라서 생성하고 불러올 수 있다
		//static이라면 메서드명만으로 생성 가능
		VectorBoard_02 vb=new VectorBoard_02();
		//vb.inputBoard(); 입력까지만 작성했을때 테스트용
		
		Scanner sc=new Scanner(System.in);
		int n; //몇 번 선택, 몇 번 입력 등등
		
		while(true)
		{
			System.out.println("1.추가  2.전체출력  9.종료");
			n=Integer.parseInt(sc.nextLine()); //안전하게 숫자 뒤에 문자와도 버퍼 없게
			
			if(n==1)
				vb.inputBoard();
			else if(n==2)
				vb.writeBoard();
			else if(n==9)
			{
				System.out.println("프로그램 종료");
				break;
			}
			else
			{
				System.out.println("잘 못 입력");
				continue;
			}
		}
	}

}
