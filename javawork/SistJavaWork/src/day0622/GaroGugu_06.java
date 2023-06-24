package day0622;

import java.util.Scanner;

public class GaroGugu_06 {

	public static void main(String[] args) {
		//가로방향으로 구구단을 출력하세요
		//[2단] [3단] ...... [9단]
		System.out.println("\t**가로방향 구구단**");
		
		//제목[]
		for(int dan=2;dan<=9;dan++)
		{
			System.out.print("["+dan+"단]\t");
		}
		
		System.out.println();
		
		//단출력
		for(int i=1;i<=9;i++)
		{
			for(int dan=2;dan<=9;dan++) //단
			{
				System.out.print(dan+"x"+i+"="+dan*i+"\t"); // 1. 2x1 3x1 .... 9x1 먼저 출력하고
															// 3. i가 1개증가해서
															//	  2x2 3x2 .... 9x2 순서대로 출력
			}
			System.out.println(); //2. 줄내려서
		}

	}

}
