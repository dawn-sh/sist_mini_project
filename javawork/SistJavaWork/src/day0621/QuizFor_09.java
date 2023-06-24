package day0621;

public class QuizFor_09 {

	public static void main(String[] args) {

		//Q.1 2 4 5 7 8 10 _continue이용해서 출력
		
		for(int i=1;i<=10;i++)
		{
			if(i%3==0)
				continue;
			System.out.print(i+" ");
		}
		System.out.println();
		
		/*Q. continue이용할것!!
		 * 홀수값: 1
		 * 홀수값: 3
		 * 홀수값; 5
		 * 홀수값: 7
		 * 홀수값: 9 */
		
		for(int i=1;i<=10;i++)
		{
			if(i%2==0) //짝수
				continue; //스킵
			System.out.println("홀수값: "+i);
		}
		System.out.println();
		
		//1~100까지 중에서 홀수의 합을 구하시오
		int tot=0; //홀수 합계 구할 변수
		int etot=0; //짝
		
		for(int i=1;i<=100;i++)
		{
			if(i%2==1)
				tot+=i;
			
			else
				etot+=i;
		}
		System.out.println("1~100까지 중에서 홀수의 합은 "+tot);
		System.out.println("1~100까지 중에서 짝수의 합은 "+etot);
		
		//while(true)문을 이용해서 1~100사이의 짝수 합 구하기
		
		int etotal=0;
		
		while(true)
		{
			int i=1;
			while(i<=100)
			{
				if(i%2==0)
				{
					etotal+=i;
				}
				i++;
			}
			break;
		}
		System.out.println("짝수의 합은 "+etotal);
		
		
		//선생님
		int a=0;
		int sum=0;
		
		while(true)
		{
			a++;
			
			if(a%2==0)
				sum+=a;
			/*
			if(a%2==1)
				continue;
			sum+=a;*/
			
			if(a==100)
				break;
		}
		System.out.println("짝수의 합은 "+sum);
		
	}

}
