package day0620;

public class ForTest_16 {

	public static void main(String[] args) {
		// 1. 1~5까지 출력하시오
		
		
		   //int i는 지역변수
		   //1개의 for문을 벗어나면 다시 선언
		//for(초기식;조건식;증감식)
		for(int i=1;i<=5;i++)
		{
			System.out.print(i+" "); //가로로 출력 //한 줄일 때는 {}안해도 
		}
		
		System.out.println(); //첫번째 for문 후 줄 내리는 기능
		
		for(int i=5;i>=1;i--)
		{
			System.out.print(i+" ");
		}
		
		System.out.println();
		
		//0,2,4,6,8,10
		for(int i=0;i<=10;i+=2)
		{
			System.out.print(i+" ");
		}
		
		System.out.println();
		
		//3,6,9,12,15
		for(int i=3;i<=15;i+=3)
		{
			System.out.print(i+" ");
		}
		
		System.out.println();
		
		/* I love Java_0
		 * I love Java_1
		 * I love Java_2
		 * I love Java_3
		 */
		for(int i=0;i<=3;i++)
		{
			System.out.println("I love Java_"+i);
		}

	}

}
