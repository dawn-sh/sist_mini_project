package day0623;

import java.util.Random;

public class Random_02 {

	public static void main(String[] args) {
		//Random 클래스로 이용하는 법

		Random r=new Random(); //static이라는 매서드 안에서는 new로 생성안해도 되지만 99% new로 생성해서 사용
		
		System.out.println("0~9사이의 난수발생");
		for(int i=1;i<=3;i++)
		{
			int n=r.nextInt(10); //n.nextInt(10);==(int)(Math.random()*10)
								 //random은 int로 반환하기 때문에 int 변수=랜덤의 변수.nextInt();
			System.out.println(n);
		}
		
		System.out.println("1~10사이의 난수발생");
		for(int i=1;i<=3;i++)
		{
			int n=r.nextInt(10)+1; //n.nextInt(10);==(int)(Math.random()*10)+1
			System.out.println(n);
		}
		
		
	}

}
