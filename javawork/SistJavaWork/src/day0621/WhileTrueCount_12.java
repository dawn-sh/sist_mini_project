package day0621;

import java.util.Scanner;

public class WhileTrueCount_12 {

	public static void main(String[] args) {
		/* 
		 * 임의의 수를 입력해서 합계, 평균, 갯수
		 * 단 0을 입력하면 while문을 빠져나가게 하자
		 *  */
		Scanner sc=new Scanner(System.in);
		int su,sum=0; //입력할 수, 합계
		int cnt=0;//갯수
		double avg=0;//평균
		
		while(true)
		{
			System.out.println("숫자입력(종료:0)");
			su=sc.nextInt();
			
			if(su==0) //cnt 밑에 조건문을 두면 종료수(0)도 cnt갯수가 증가해서 cnt++;위에 두어야함
				break;
			
			sum+=su; //입력한 수 하나씩 덧셈
			cnt++; //갯수 하나씩 증가
		}
		avg=(double)sum/cnt;
		System.out.println("입력한 수의 합 "+sum);
		System.out.println("총 입력한 갯수 "+cnt);
		System.out.println("입력한 수의 평균 "+avg);
		
	}

}
