package day0703;

import java.util.Date;

public class NullPoint_02 {
	
	//NullPointerExcetion - 생성하지 않고 클래스의 메소드를 호출하는 경우
	Date date;
	
	public void writeday() {
		
		int y,m,d;
		
		//예외처리 안하고 넘어갈게
		//위기 상황을 모면하는 것
		try {
		y=date.getYear()-1900;
		m=date.getMonth()+1;
		d=date.getDate();

		
		System.out.println(y+"년"+m+"월"+d+"일입니다");
			   //모든 exception의 부모 -> Exception
		}catch (NullPointerException e) {
				
			System.out.println("객체생성을 안했어요"+e.getMessage());
		}
	}

	public static void main(String[] args) {
		
		NullPoint_02 np=new NullPoint_02();
		np.writeday();
		System.out.println("***정상종료***");
		
	}

}
