package day0626;

import java.util.Scanner;

public class BuyLotto_04 {

	public static void main(String[] args) {
		// 몇 장 구입할건지 입력하여 여러개 출력
		
		Scanner sc=new Scanner(System.in);
		int guip; //몇 장,얼마 구일할지
		int [] lotto= new int[6];
		
		//System.out.println("로또 몇 장을 구입 할지 입력해주세요"); 횟수
		System.out.println("로또 얼마 구입 할지 입력해주세요"); //금액
		guip=sc.nextInt();
		
		
		//예외조항
		//if(guip<1) 횟수
		if(guip<1000) //금액
		{
			//System.out.println("***구입횟수가 부족합니다***"); 횟수
			System.out.println("***구입 금액이 부족합니다***"); //금액
			return; //메인함수 자체를 빠져나간다
		}
		
		//for(int n=0;n<guip;n++) { 횟수
		for(int n=0;n<guip/1000;n++) { //금액
			
			System.out.printf("%d회: ",n+1);
		
		for(int i=0;i<lotto.length;i++)
		{
			//1~45까지의 랜덤 수 발생
			lotto[i]=(int)(Math.random()*45)+1;
			
			//중복처리
			for(int j=0;j<i;j++) //비교값 반복문
			{
				if(lotto[i]==lotto[j])
				{
					i--; 
					break;
				}
			}
			
		}
		
		//Arrays.sort(lotto);//오름차순 정렬
		System.out.println("오름차순 정렬");
		
		for(int i=0;i<lotto.length-1;i++)
		{
			for(int j=i+1;j<lotto.length;j++)
			{
				if(lotto[i]>lotto[j])
				{
					int temp=lotto[i];
					lotto[i]=lotto[j];
					lotto[j]=temp;
				}
			}
		}
		
		//출력
		for(int i=0;i<lotto.length;i++)
		{
			System.out.printf("%5d",lotto[i]);
		}
		System.out.println();
		
		}//첫번째 for문 끝

	}

}
