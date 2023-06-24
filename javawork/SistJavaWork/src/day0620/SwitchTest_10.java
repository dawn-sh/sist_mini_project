package day0620;

public class SwitchTest_10 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int n=5;
		
		switch(n) //각 케이스마다 break안해주면 계속 돌아감/끝까지 돌아
		{
		case 1:
			System.out.println("n is 1"); //n이 1일때 case1
			break;
		case 2:
			System.out.println("n is 2"); //n이 2일때 case2
			break;
		case 3:
			System.out.println("n is 3"); //n이 3일때 case3
			break;
		case 4:
			System.out.println("n is 4"); //n이 4일때 case4
			break;
		default:
			System.out.println("n > 4"); //n이 그외 일
			break;
			
		}
		
		String msg="happy";
		//문자열은 jdk8부터 가능
		
		switch(msg)
		{
		case "hello":
			System.out.println("안녕");
			break;
		case "happy":
			System.out.println("행복하다");
			break;
		case "nice":
			System.out.println("좋구만");
			break;
		}
		
		
		//점수이용하여 학점 구하기
		int score=89;
		char grade;
		
		switch(score/10) //10으로 나누면 케이스를 덜 나눌 수 있는 조건 100/10=10 98/10=9 78/10=7 ....
		{
			case 10:
			case 9:
				grade='A';
				break;
			case 8:
				grade='B';
				break;
			case 7:
				grade='C';
				break;
			case 6:
				grade='D';
				break;
			default:
				grade='F';
		}
		
		System.out.println(score+"==>"+grade);
	}

}
