package day0621;

import java.util.Scanner;

public class ScannerFor_11 {

	
	public static void numSum() {
		//합계를 구할 숫자는?	100
		//1부터 100까지의 합은 5050입니다
		
		Scanner sc=new Scanner(System.in);
		
		int	n; //입력할 
		
		System.out.print("합계를 구할 숫자는? ");
		n=sc.nextInt();
		
		int sum=0;
		
		for(int i=1;i<=n;i++) //입력한 숫자가 범위의 끝이어야 해서 int i=1 하나 더 선언
			sum+=i;
		
		System.out.println("1부터 "+n+"까지의 합은 "+sum+"입니다");
		
	}
	
	public static void factorialTest() {
		
		//1!=1
		//2!=2
		//3!=6
		
		//10! 출력
		int result=1; //factorial의 결과 값은 무조건 1//1까지 곱해주기 때문
		for(int i=1;i<=10;i++)
		{
			result*=i;
			System.out.println(i+"!="+result);
		}
		//for문 안에 있기 때문에 범위까지 !이 나옴
		
	}
	
	public static void quizFact() {
		//팩토리얼을 구할 숫자를 입력
		//5!=120
		Scanner sc=new Scanner(System.in);
		
		int n;
		
		System.out.println("팩토리얼을 구할 숫자를 입력");
		n=sc.nextInt();
		
		int resum=1;
		
		for(int i=1;i<=n;i++)
			resum*=i;
		System.out.println(n+"!= "+resum);
	} //입력한 수의 팩토리얼만 나오게 for문 나와서 출력
	
	
	public static void main(String[] args) {

		//numSum();
		//factorialTest();
		quizFact();
		
	}

}
