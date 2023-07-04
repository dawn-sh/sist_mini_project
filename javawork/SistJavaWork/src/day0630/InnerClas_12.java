package day0630;

class Outer{
	
	String name="이민규";
	int age=22;

	
	class Inner{
		
		//내부에서는 외부클래스 멤버 사용 가능
		public void disp()
		{
			System.out.println("***Inner 내부 클래스***");
			System.out.println("이름: "+name+", 나이: "+age);
		}
	}
	
	class Inner2{
		
		//내부에서는 외부클래스 멤버 사용 가능
		public void disp2()
		{
			System.out.println("***Inner2 내부 클래스***");
			System.out.println("이름: "+name+", 나이: "+age);
		}
	}
	
	
	//외부클래스의 메서드 추가
	public void write()
	{
		//외부에서 내부클래스 선언
		Inner in1=new Inner();
		in1.disp();
		
		Inner2 in2=new Inner2();
		in2.disp2();
	}
	
	
}

public class InnerClas_12 {

	public static void main(String[] args) {
		
		Outer out=new Outer();
		out.write();
		
		System.out.println("============================");
		
		System.out.println("다른 클래스 통하지 않고 직접 내부클래스 메서드 호출하려면?");
		
		//바로 내부클래스 호출 가능
		//외부클래스명.내부클래스명 변수명=new 외부클래스명().내부클래스명();
		Outer.Inner com=new Outer().new Inner();
		com.disp();
		
		//외부클래스 생성하고 그 변수로 내부클래스 생성가능
		//외부클래스명 변수1=new 외부클래스명();
		//외부클래스명.내부클래스명 변수2=변수1.new 내부클래스명();
		Outer.Inner2 com2=out.new Inner2();
		com2.disp2();
		

	}

}
