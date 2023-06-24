package day0620;

import java.util.Scanner;

public class SwitchTest_11 {

	public static void main(String[] args) {
		// 숫자를 입력받아 그 숫자를 출력해보기
		Scanner sc=new Scanner(System.in);
		int num;
		
		System.out.println("숫자입력");
		num=sc.nextInt();
		
		switch(num)
		{
		case 1:
			System.out.println("숫자 1입니다");
			break;
		case 2:
			System.out.println("숫자 2입니다");
			break;
		case 3:
			System.out.println("숫자 3입니다");
			break;
		default:
			System.out.println("숫자 1 2 3 이 아닙니다");
			break;
		}
		
		//switch이용해서
		//22는 짝수입니다  or 5는 홀수입니다
		switch(num%2)
		{
		case 0: //인자(num%2)값이 0이면
			System.out.println("숫자 "+num+"은 짝수입니다");
			break;
		default: //그 외 값이면
			System.out.println("숫자 "+num+"은 홀수입니다");
			break;
		}
		
		//if
		if(num%2==0) //위 switch에서 case0
			System.out.println(num+"은 짝수!!!");
		else
			System.out.println(num+"홀수!!");

	}

}
