package day0626;

import java.util.Arrays;

public class LottoSort_03 {

	public static void main(String[] args) {

		int [] lotto= new int[6];
		
		for(int i=0;i<lotto.length;i++)
		{
			//1~45까지의 랜덤 수 발생
			lotto[i]=(int)(Math.random()*45)+1;
			
			//중복처리
			for(int j=0;j<i;j++) //비교값 반복문
			{
				if(lotto[i]==lotto[j])
				{
					i--; //같은 번지에 다시 값을 구하기 위해서
					break; //중복된다면 현재 중복문을 벗어나서 위 반복문으로 돌아가야함 // -> i++로 이동
						   //continue;라면 두번째 for문(j++)에서 반복되기 때문에 안된다
						   //여기서는 굳이 break 안해줘도 작동은 하지만 중복처리 로직에서는 일반적으로 break; 사용
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
		
	}

}
