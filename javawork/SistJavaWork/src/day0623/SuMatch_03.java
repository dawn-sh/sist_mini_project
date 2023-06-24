package day0623;

import java.util.Scanner;

public class SuMatch_03 {

	public static void main(String[] args) {
		//랜덤 수를 발생시킨 후 그 숫자를 맞춰보자
		
		Scanner sc=new Scanner(System.in);
		
		//1~100사이의 랜덤수 발생(rnd)
		int rnd=(int)(Math.random()*100)+1; //이 줄까지하고 실행하면 출력이 안되었지만 콘솔창에는 이미 랜덤 수가 있음
		
		int su; //랜덤 수 맞출 입력 숫자
		int cnt=0; // x번 안에 맞추게 하기 위해 count로 사용
				   // count 없이 하려면 for문 사용 count 있으려면 while문 사용
				   // 혹은 몇 번만에 맞췄는지 표시해주려면 count 필요
		
		while(true)
		{
			cnt++;
			//System.out.print("숫자: ");
			System.out.print(cnt+": ");
			su=sc.nextInt();
			
			if(su>rnd)
				System.out.println(su+"보다 작습니다");
			else if(su<rnd)
				System.out.println(su+"보다 큽니다");
			else
			{
				System.out.println("맞았습니다 정답은 "+rnd+"입니다");
				break;
			}
		}
		
		System.out.println("게임종료");
		
	}

}
