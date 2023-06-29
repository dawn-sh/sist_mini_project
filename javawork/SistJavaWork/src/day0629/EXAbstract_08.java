package day0629;

/*
 추상클래스는 new로 생성못함
 추상메서드가 하나라도 존재하는 클래스를 추상 클래스라고 한다
 추상클래스-일반메서드,추상메서드, 둘 다 존재 가능
*/

//추상메서드가 1개라도 있다면 클래스 앞에 abstract를 붙여서 추상클래스로 만들어야함
abstract class Fruit{
	
	static final String MESSAGE="오늘은 비 많이 오는 날";
	
	//일반메서드
	public void getTitle()
	{
		System.out.println("우리는 추상클래스 공부중!!!");
	}
	
	
	//추상메서드(미완의 메서드)만 담은 곳이 인터페이스 -> 거기에는 abstract를 붙일 필요가 없다
	
	//추상메서드(미완의 메서드...선언문만 있고 구현부인 몸통이 없다)
	//abstract -> 추상메서드라는 표시 -> 클래스에도 abstract 붙어야함
	abstract public void showMassage(); //오버라이딩 목적
}

////////////////////////////////////////////////////////////////////////////////////////////

//추상이지만 클래스는 무조건 extends로 상속받음
class Apple extends Fruit{

	@Override
	public void showMassage() {
		System.out.println("Apple_Message");
		System.out.println(Fruit.MESSAGE);
	}
	
}
/////////////////////////////////////////////////////////////////////////////////////////
class Banana extends Fruit{

	@Override
	public void showMassage() {
		System.out.println("Banana_Message");
	}
	
}
////////////////////////////////////////////////////////////////////////////////////
class Orange extends Fruit{

	@Override
	public void showMassage() {
		System.out.println("Orange_Message");
	}
	
}

/////////////////////////////////////////////////
public class EXAbstract_08 {

	public static void main(String[] args) {
		
		//일반생성_메서드호출
		Apple a=new Apple();
		Banana b=new Banana();
		Orange o=new Orange();
		
		a.showMassage();
		b.showMassage();
		o.showMassage();
		
		//다형성 처리
		//하나의 변수로 여러가지 일을 처리할 때 이용
		//부모클래스명 변수명; 선언
		//변수명=new 자식클래스명();
		//변수명.메소드명();
		//생성해준 클래스 밑에 그 클래스에서 있는 메소드명만 사용가능
		Fruit fruit;
		
		fruit=new Apple();
		fruit.showMassage();
		
		fruit=new Banana();
		fruit.showMassage();
		
		fruit=new Orange();
		fruit.showMassage();
		
		fruit.getTitle();
		

	}

}
