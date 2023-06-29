package day0629;

//class 가 class를 받을때 : extends
//class 가 interface 받을때 : implements
//interface 가 interface 받을때 : extends
//->같은 종류끼리 받을때 extends
//implements는 다중구현 가능하다


//implements -> interface로 만든 추상메서드를 가져오기 위해서 사용

//클래스 생성시 add해서 interface 파일 넣어서 자동 오버라이딩 가능

//혹은 implements interface가 있는 클래스명 하면 기존 클래스명 아래 빨간줄이 뜨면서 자동 오버라이딩 가능
public class Food34 implements FoodGage {

	@Override
	public void order() {
		System.out.println(SHOPNAME);
		//SHOPNAME="돈까스 집"; //->오류발생 interface에서 자동으로 final로 만들었기 때문에 수정 불가능
		System.out.println("음식을 주문합니다");
	}

	@Override
	public void beadal() {
		System.out.println(SHOPNAME);
		System.out.println("음식을 배달합니다");
	}

	

}
