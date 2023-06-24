package day0621;

public class ExFor_05 {

	public static void main(String[] args) {
		//for문
		//1~10까지 가로로 출력
		
		for(int i=1;i<=10;i++)
			System.out.print(i+" ");
		
		System.out.println();
		
		//10~1까지 가로로 출력
		
		for(int i=10;i>=0;i--)
			System.out.print(i+" ");
		
		System.out.println();
		
		//1~50까지를 출력하는데 3씩 증가하게...
		//1 4 7.....
		
		for(int i=1;i<=50;i+=3)
			System.out.print(i+" ");

		System.out.println();
		
		//continue
		//1~20까지 출력하는데 1 2 3 4 6 7 8 9 11 12 ...20
		for(int i=1;i<=20;i++)
		{
			//continue를 만나면 수행을 안하기 때문에 조건 먼저 설정
			//continue는 해당 조건 스킵
			//5의 배수를 빼고 출력
			if(i%5==0)
				continue; //i++로 이동/반복문 탈출안하고 해당조건만 스
				//break; //반복문 탈출
			System.out.print(i+" ");
		}
	}

}
