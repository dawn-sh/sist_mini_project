package day0629;

class Work{
	
	public void process()
	{
		System.out.println("작업중!!!!!!!");
	}
}
//////////////////////////////////////////////////////////

//추상 메서드가 아니라서 extends 해도 클래스 밑에 밑줄이 안뜸
class Food extends Work{
	@Override
	public void process() {
		super.process();
		System.out.println("*****음식을 합니다******");
	}
}
///////////////////////////////////////////////////////////
class Clean extends Work{
	
	@Override
	public void process() {
		super.process();
		System.out.println("********청소를 합니다******");
	}
	
}
//////////////////////////////////////////////////////////

class Study extends Work{
	@Override
	public void process() {
		super.process();
		System.out.println("**********공부를 합니다*********");
	}
}


//////////////////////////////////////////////////////////
public class Inher_09 {

	public static void main(String[] args) {
		
		//일반적인 생성...메서드호출
		Study s=new Study();
		Clean c=new Clean();
		Food f=new Food();
		
		c.process();
		s.process();
		f.process();
		
		//다형성..하나의 변수로 호출시 누가 생성되었느냐에 따라 그 기능이 달라짐
		System.out.println("***다형성 출력중***");
		Work work=null; //클래스 기본값 중복되는 것을 없애기 위해 null사용
						//ex) work=new 하위클래스();
						//Work work=new 하위클래스();에서 Work(상위클래스명)을 지우기 위해
		
		work=new Study();
		work.process();
		
		work=new Clean();
		work.process();
		
		work=new Food();
		work.process();

	}

}
