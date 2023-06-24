package day0623;

public class ArrString_05 {

	public static void main(String[] args) {
		//문자배열
		
		String[] str=new String[4]; //선언과 함께 배열갯수지정
									//기본적으로 string에 값을 안넣어주면 null값이 들어감
		//초기화
		str[0]="최진평";
		str[1]="고은비";
		str[2]="김영환";
		str[3]="홍성경";
		
		//출력
		System.out.println("for문 출력");
		for(int i=0;i<str.length;i++)
			System.out.println((i+1)+":"+str[i]);
		
		System.out.println("for~each문 출력");
		for(String s:str)
			System.out.println(s); 

	}

}
