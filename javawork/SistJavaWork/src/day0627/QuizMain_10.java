package day0627;

public class QuizMain_10 {

	public static void main(String[] args) {

		/*
		 * **상품입고**
		 * -------------------------
		 * 입고된 상점: 롯데마트
		 * -------------------------
		 * 상품명: 딸기
		 * 가격: 10000원
		 * 수량: 5팩
		 * -------------------------
		 * 상품명: 쵸코파이
		 * 가격: 5000원
		 * 수량: 10상자
		 * -------------------------
		 * 상품명: 요거트
		 * 가격: 2500원
		 * 수량: 100팩*/
		
		System.out.println("**상품입고**");
		System.out.println("-------------------------------");
		System.out.println("입고된 상점: "+Quiz_10.SHOPNAME);
		System.out.println("-------------------------------");
		
		Quiz_10 n1=new Quiz_10("딸기", 5, 10000);
		String name=n1.getSangpum();
		int dan=n1.getDan();
		int su=n1.getSu();
		
		System.out.println("상품명: "+name+"\n가격: "+dan+"원 \n수량: "+su+"팩");
		
		System.out.println("-------------------------------");
		
		Quiz_10 n2=new Quiz_10("쵸코파이", 10, 5000);
		String name2=n2.getSangpum();
		int dan2=n2.getDan();
		int su2=n2.getSu();
		
		System.out.println("상품명: "+name2+"\n가격: "+dan2+"원 \n수량: "+su2+"상자");
		
		System.out.println("-------------------------------");
		
		Quiz_10 n3=new Quiz_10("요거트", 100, 2500);
		String name3=n3.getSangpum();
		int dan3=n3.getDan();
		int su3=n3.getSu();
		
		System.out.println("상품명: "+name3+"\n가격: "+dan3+"원 \n수량: "+su3+"팩");
		
		
		
		

	}

}
