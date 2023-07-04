package day0630;

//내부클래스 - 특정클래스 안에 또다른 클래스가 정의됨
//하나의 멤버처럼 사용 가능(외부의 모든멤버들을 자신의 멤버처럼 사용가능)
//클래스 상속 하나만 받을 수 있는 단점을 어느 정도 보완가능


//내부클래스 저장파일 경로는 src 아닌 bin에 들어가야 확인가능



//앱에서 주로 사용

class OuterObj{

	class InnerObj{
		
		public void write()
		{
			System.out.println("내부클래스의 메소드");
		}
	}
	
	public void showMsg()
	{
		System.out.println("외부클래스의 메소드");
		System.out.println("외부에서 내부클래스 메서드 호출가능");
		
		//내부클래스 바로 생성 가능
		InnerObj inObj=new InnerObj();
		inObj.write();
	}
	
}

///////////////////////////////////////////////////////
public class InnerClass_11 {

	public static void main(String[] args) {
			
		OuterObj outObj=new OuterObj();
		outObj.showMsg();
		System.out.println("-------------------------------------");
		
		//내부클래스의 메서드 선언...바로 내부클래스 접근 불가능/ 외부클래스통해서만 가능
		//외부클래스명.내부클래스명 변수명=new 외부클래스명().내부클래스명();
		//==OuterObj.InnerObj obj=new OuterObj().new InnerObj();
		OuterObj.InnerObj obj=outObj.new InnerObj();
		obj.write();
		//////////////////////////////////////////////////////////////
	}

}
