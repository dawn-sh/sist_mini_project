package day0629;


//부모클래스
class Point{
	int x;
	int y;
	
	//디폴트생성자
	public Point() {
		System.out.println("super_디폴트 생성자");
	}
	
	//명시적 생성자
	public Point(int x,int y) {
		System.out.println("super_인자있는 생성자");
		this.x=x;
		this.y=y;
	}
	
	//메서드
	public void write()
	{
		System.out.println("x좌표="+x+"y좌표="+y);
	}
}

//////////////////////////////////////////////
//자식클래스
class SubPoint extends Point{

	String msg;
	
	public SubPoint(int x, int y,String msg) {
		super(x, y);
		this.msg=msg;
	}
	
	//부모클래스에 디폴트생성자 만들어줘서 에러가 안남
	public SubPoint() {
		super(); //생략되있음
		System.out.println("sub_디폴트 생성자");
	}
	
	//오버라이딩...부모의 메서드 재구현할 목적
	@Override
	public void write() {
		super.write();
		System.out.println("메세지: "+msg);
	}
	
}

//////////////////////////////////////////////
public class ExobTest_05 {

	public static void main(String[] args) {
		
		SubPoint sp=new SubPoint(); //디폴트 생성자가 있어서 받아짐
		sp.write();//디폴트 생성자에 값을 안넣어줘서 null값 출력
		
		SubPoint sp1=new SubPoint(100, 200, "오늘 비많이 온다!!!");
		sp1.write();

	}

}
