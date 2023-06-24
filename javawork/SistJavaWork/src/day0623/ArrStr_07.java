package day0623;

public class ArrStr_07 {

	public static void main(String[] args) {
		// 문자형 배열 str1,str2...선언과 동시에 초기화
		
		String [] str1= {"돈까스","쫄면","햄버거","국밥","짬뽕"};
		String [] str2=new String[5]; //5개의 문자열이 들어가도록 메모리할당, null로 초기화
		
		//str2에 문자열넣기
		str2[0]="red";
		str2[1]="yellow";
		str2[2]="blue";
		
		//str1을 변수i를 이용해서 출력
		//음식1: 돈까스
		//음식2: 쫄
		System.out.println("#str1 출력1");
		for(int i=0;i<str1.length;i++)
			System.out.println("음식"+(i+1)+": "+str1[i]);
		
		//str1출력 (돈까스	쫄면	햄버거 국밥 짬뽕)
		System.out.println("#str1 출력2");
		for(String s:str1)
			System.out.print(s+"\t");
		
		//str2도 위 2가지 방법으로 출력
		System.out.println("#str2 출력1");
		for(int i=0;i<str2.length;i++)
			System.out.println("색깔"+(i+1)+": "+str2[i]);
		
		System.out.println("#str2 출력2");
		for(String s:str2)
			System.out.print(s+"\t");

	}

}
