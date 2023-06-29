package day0628;
//궁금증만 해소하고 잊어도 되는 코드
//Calendar때 만들었던 것이 어떻게 만들어졌는지 보기위해서 한 코드

class Test{
	
	public Test() {
		System.out.println("디폴트 생성자");
	}
	
	//생성자 대신 instance를 반환해주는 메서드
	//Test라는 클래스 반환
	public static Test getInstance()
	{
		return new Test();
	}
	
	//일반 메서드
	public void writeMessage()
	{
		System.out.println("안녕??");
	}
}


//////////////////////////////////////////////////
public class ConstGetInstance_02 {

	public static void main(String[] args) {
		
		
		
		Test t1=new Test(); //다른 패키지라면 오류가 날 것임
		t1.writeMessage();
		//////////////////////////////////////
		Test t2=Test.getInstance();
		t2.writeMessage();

	}

}
