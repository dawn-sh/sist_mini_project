package day0627;

public class QuizMain_09 {

	public static void main(String[] args) {

		/* 내가 푼 것
		Quiz_09 in1=new Quiz_09();
		
		Quiz_09.setPlace("이마트");
		Quiz_09.getPlace();
		
		System.out.println("[쇼핑목록]");
		
		System.out.println("목록1");
		in1.setList("손선풍기");
		in1.setPrice(25000);
		
		in1.getList();
		in1.getPrice();
		
		Quiz_09 in2=new Quiz_09();
		
		System.out.println("목록2");
		in2.setList("핸드폰충전기");
		in2.setPrice(30000);
		
		in2.getList();
		in2.getPrice();
		
		Quiz_09 in3=new Quiz_09();
		
		System.out.println("목록3");
		in3.setList("이어폰");
		in3.setPrice(70000);
		
		in3.getList();
		in3.getPrice();
		*/
		
		//선생님 풀이
		
		System.out.println("\t[쇼핑목록]");
		
		System.out.println("쇼핑장소: "+Quiz_09.SHOPNAME);
		
		Quiz_09 q1=new Quiz_09();
		q1.setSangName("손선풍기");
		q1.setPrice(25000);
		
		String sang=q1.getSangName();
		int pri=q1.getPrice();
		
		System.out.println("상품명: "+sang);
		System.out.println("가격: "+pri+"원");
		
		/////////////////////////////////////////////////////////////////////
		System.out.println("======================================");
		System.out.println("쇼핑장소: "+Quiz_09.SHOPNAME);
		
		Quiz_09 q2=new Quiz_09();
		q2.setSangName("핸드폰충전기");
		q2.setPrice(35000);
		
		System.out.println("상품명: "+q2.getSangName());
		System.out.println("가격: "+q2.getPrice());
		
		/////////////////////////////////////////////////////////////////////
		System.out.println("======================================");
		System.out.println("쇼핑장소: "+Quiz_09.SHOPNAME);
		
		Quiz_09 q3=new Quiz_09();
		q3.setSangName("이어폰");
		q3.setPrice(70000);
		
		System.out.println("상품명: "+q3.getSangName());
		System.out.println("가격: "+q3.getPrice());
	}

}
