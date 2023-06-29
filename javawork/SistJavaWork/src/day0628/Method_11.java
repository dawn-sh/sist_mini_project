package day0628;

/*
 메서드 작성요령
 접근제한자(public)+지정예약어(static)+결과리턴형(void or int or String)+메서드명(){}; ->()set이면 인자값 있고
 						 												  	  ()get이면 인자값 없다
 1.반복적인 코드를 줄여서 코드의 관리가 용이
 2.하나의 메서드는 한가지 기능만을 수행하도록 작성(원칙)
 
 객체지향의 장점 - 필요할 때마다 꺼내쓰기
 */
public class Method_11 {

	public static boolean aaa() {
		return false;
	}
	
	public static int bbb() {
		return 33;
	}
	
	public static int ccc(int x,int y) {
		
		int z=x+y;
		return z;
	}
	
	public static void main(String[] args) {
		
		
		//같은 클래스 안에서 만든 메서드이기 때문에 메서드명만으로 호출가능
		
		boolean a=aaa();
		System.out.println("a="+a);
		
		int b=bbb();
		System.out.println("b="+b);
		
		int c=ccc(10, 20);
		System.out.println("c="+c);

	}

}
