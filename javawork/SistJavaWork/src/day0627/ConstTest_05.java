package day0627;

//1개의 클래스에는 public은 1개만 쓰기 때문에 class만
//메인은 실행하는 곳에서만
class ConstA{

	int num=0;
	
	//생성자는 생성만을 목적으로 함
	
	//디폴트생성자...명시적인 생성자를 만들면 디폴트 생성자는 자동생성되지않는다
	//필요하면 만들어준다
	//인자값 안보내고 생성만
	public ConstA() {
		num=10; //=>초기화
		System.out.println("디폴트 생성자");
	}
	
	
	//인자있는생성자
	//()(파라메터값)을 보냄
				//(인자)
	public ConstA(int num) {
		this.num=num; //this는 자기 자신을 의미하는 reference변수
					  //instance변수만 가능
					  //() 안 값이 int n이면 num=n; 가능 //클래스에 instatnce변수 int num=0; 선언 했기 때문
		System.out.println("생성자 호출");
	}
	
	//메서드      //return없다(void)
			//void가 아니라면 return 값 필요
	public int getNumber() {
		
		num=50;
		
		return num;
	}
	
	
}


////////////////////////////////////////////////
public class ConstTest_05 {

	public static void main(String[] args) {
		
		//set 메서드는 수정이 가능하게
		//get 메서드는 return값 받아서
		
		
		//명시적 생성자(인자값으로 num을 생성자)
		//인자 있는 생성자
		ConstA ca1=new ConstA(30); //생성과 동시에 인자값을 보냄 => 바로 수정 가능
		System.out.println(ca1.num);
		
		//디폴트 생성자 //수정메서드 필요
		ConstA ca2=new ConstA();
		System.out.println(ca2.num);
		
		//메서드 호출
		ConstA ca3=new ConstA(); //디폴트로 생성
		//ca3.num=10000; //public int getNumber()에서 메서드 값이 없다면 여기서 수정가능
		System.out.println(ca3.getNumber());
		
	}

}
