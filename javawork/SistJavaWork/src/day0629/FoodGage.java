package day0629;

public interface FoodGage {
	
	//인터페이스는 상수와 추상메서드만 선언이 가능하다
	String SHOPNAME="보슬보슬"; //상수(final 생략)...자동으로 final이라 인식
							  //->오로지 상수만 가능하기 때문에
	
	//추상 메서드의 abstract 생략...추상메서드만 가능하기때문
	public void order();
	public void beadal();

}
