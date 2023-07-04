package day0703;

public class ExException_01 {

	public static void main(String[] args) {
		
		System.out.println("프로그램 시작!!!");
		//try 안에 에러가 발생할 수 있는 부분을 넣음
		//사용은 많이 하지만 직접 만들지는 않음
		//if로 대부분의 예외처리함
		try {
			//에러발생 할 수 있는 코드
		int num=3/0; //오류 일부러 발생 //정수를 0으로 나누면 에러발생
		  //catch(~~때문에 나는 오류 e(변수))
		  //에러에 대한 해결.처리
		} catch(ArithmeticException e) {
			//해결방안
			System.out.println(e.getMessage()); //예외 출력메세지
			//e.printStackTrace(); // 어떤 에러인지 확인 //자세한 예외정보출력
		}
		System.out.println("프로그램 종료");

	}

}
