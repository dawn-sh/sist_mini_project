package day0622;

import java.util.Scanner;

public class ExForGugu_04 {

	public static void main(String[] args) {
		//2~9까지 구구단 (구구단 기본로직)
		/*for(int dan=2;dan<=9;dan++)
		{
			for(int j=1;j<=9;j++)
			{
				System.out.println(dan+"x"+j+"="+dan*j);
			}
			
			System.out.println();
		}*/
		
		
		//구구단으로 break연습
		/*반복문 앞에 이름(label)을 붙이고 해당 이름을 break처리하면
		2개 이상의 반복문을 빠져나가는게 가능하다*/
		
	loop: for(int dan=2;dan<=9;dan++)
		{
			for(int j=1;j<=9;j++)
			{
				//각 단의 4까지만 나오게 break
				/*if(j==5)
					break;*/
				
				//반복문 앞에 이름 붙이고 break 이름;하면
				//해당 반복문 break 가능
				if(j==5)
					break loop;
				
				System.out.println(dan+"x"+j+"="+dan*j);
			}
			System.out.println();
		}

	}

}
