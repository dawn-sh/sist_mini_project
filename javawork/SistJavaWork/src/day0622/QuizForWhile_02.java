package day0622;

import java.util.Scanner;

public class QuizForWhile_02 {
	
	//class안에 int, String, boolean만 써도
	//자동으로 int = 0, String =null, boolean = false 인식
	
	public static void quiz1() {
		//점수를 반복해서 입력하면 합계를 구하시오
		//1~100이 아니면 제외(continue)
		//0을 입력하면 프로그램 종료
		Scanner sc=new Scanner(System.in);
		
		int sum=0;
		int n;
		
		
		while(true)
		{
			System.out.println("점수를 입력하세요(종료: 0)");
			n=sc.nextInt();
			
			//break문 먼저 사용해야 예외사항 x
			if(n==0)
				break;
		
			//점수 잘 못 쓰면 다시 반복해서 쓸 수 있음
			//만약 갯수 셀때 예외 사항 갯수를 빼주고 싶으면 예외사항 안에 갯수--;해주면 됨
			if(n>100 || n<1)
				continue;
				
			sum+=n;
		}
			System.out.print("합계는 "+sum);
	}
	public static void quiz2() {
		//점수를 반복해서 입력하면 합계,평균을 구하시오
		//끝이라고 입력시 프로그램 종료
		Scanner sc=new Scanner(System.in);
		
		String score;
		int sum=0,cnt=0;
		double avg; // double avg=0; 상관x
		
		while(true)
		{
			System.out.println("점수를 입력하세요(종료: 끝)");
			score=sc.nextLine();
			
			//영어는 equalsIgnoreCase 상관x, 한글은 딱 맞아야해서 equals
			if(score.equals("끝"))
				break;
			
			sum+=Integer.parseInt(score);
			cnt++;
		}
		avg=(double)sum/cnt; //(double)형변환은 혹시나 오류날까봐
		System.out.println("합계는 "+sum);
		System.out.println("평균은 "+avg);
	}
	public static void quiz3() {
		/*
		 * 총 5개의 점수를 입력받아 합계를 구하시오
		 * 만약 1~100이 아닐경우 다시 입력받아라
		 * 1번점수: 88
		 * 2번점수: 99
		 * 3번점수: 200
		 * 		잘못입력했어요
		 * 4번점수: 33
		 * 
		 * ========
		 * 합계
		 * */
		Scanner sc=new Scanner(System.in);
		
		int score;
		int sum=0;
		
		for(int i=1;i<=5;i++)
		{
			System.out.print(i+"번점수: ");
			score=sc.nextInt();
			
			if(score<1 || score>100)
			{
				System.out.println("\t잘 못 입력했어요");
				i--; //범위가 정해져 있어서 i--;를 안쓰면 5번만사용가능
					 //예외사항은 횟수(범위: i)에 넣으면 안되니
					 //i--;를 해줘서 5번 온전히 사용가능하게 해줌
				continue;
			}
			sum+=score;
		}
		System.out.println("합계는 "+sum);
	
	}

	public static void main(String[] args) {
		//quiz1();
		//quiz2();
		quiz3();
	}

}
