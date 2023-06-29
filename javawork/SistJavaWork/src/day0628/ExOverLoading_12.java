package day0628;

//자료형과 메서드명이 같아도 오류없이 생성가능(인자값이 있어야함) -> 오버로딩
//인자값 안에 변수명이 같아도 자료형이 다르면 오류안남

public class ExOverLoading_12 {
	
	public static int sum(int a,int b) {
		
		System.out.println("1번째 함수 호출");
		return a+b;
	}
	
	public static double sum(int a,double b) {
		
		System.out.println("2번째 함수 호출");
		return a+b;
	}
	
	public static double sum(double a,int b) {
		
		System.out.println("3번째 함수 호출");
		return a+b;
	}
	
	public static double sum(double a,double b) {
		
		System.out.println("3번째 함수 호출");
		return a+b;
	}

	public static void main(String[] args) {
		
		//인자타입에 따라서 자동으로 중복함수(오버로딩)가 호출된다
		System.out.println(sum(5, 5)); //->public static int sum(int a,int b)
		System.out.println(sum(5, 5.5)); //->public static double sum(int a,double b)
		System.out.println(sum(5.5, 5)); //->public static double sum(double a,int b)
		System.out.println(sum(5.5, 5.5)); //->public static double sum(double a,double b)

	}

}
