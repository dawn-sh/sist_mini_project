package day0621;

public class ExWhile_03 {

	public static void main(String[] args) {
		//while for 비교
		//10 9 8 7 6 5 4 3 2 1 0
		int i=10;
		
		while(i>=0)
		{
			System.out.print(i--+" ");
		}
			
		System.out.println();
		
		for(int a=0;a>=0;a--)
			System.out.print(a+" ");
		
		System.out.println();
		
		i=10; //for문 초기식에서 밖으로 빼도 되지만 for(;)은 그대로 둬야한다
		
		for(;i>=0;i--) //초기식 빼도 맨 앞에 ;은 둬야한다//혹은 초기식에서 초기화해줘도 됨(i=0;i>=0;i--)
			//전역에 int i는 선언해줬을 경우
			System.out.print(i+" ");
		
	}

}
