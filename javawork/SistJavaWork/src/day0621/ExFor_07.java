package day0621;

public class ExFor_07 {

	public static void main(String[] args) {

		//초기값 조건 안맞으면 한 번도 실행안
		for(int i=5;i<=1;i++)
			System.out.println(i);
		
		int i;
		for(i=1;i<=10;i++)
			System.out.print(i+" ");
		System.out.println("\n빠져 나온 후의 i값: "+i); //변수 앞에 뺐을 경우 사용 가능
		
		int a=10;
		for(;a<=50;a+=5) //초기값을 반복문 밖으로 주었을 경우 생략가능(;은 써야함)
			System.out.print(a+" ");
		System.out.println("\n빠져 나온 후의 a값: "+a);
		
		//Hello를 가로로 5번 반복하시오
		for(int n=1;n<=5;n++)
			System.out.print("Hello ");
		System.out.println();
		
		System.out.println("1부터 10까지의 숫자 중 짝수만 가로로 출력하기");
		
		for(int n=1;n<=10;n++)
		{
			if(n%2==1)
				continue;
			System.out.print(i+" ");
			/*
			if(n%2==0)
				System.out.print(i+" "); */
		}
			
		
	}

}
