package day0627; //메모리에 할당이 되더라도 프로그램 종료시 해제

public class MemoryCnt_04 {
	
	//int count=0;
	
	static int count=0;
	
	//생성자명은 클래스명과 똑같음
	public MemoryCnt_04() {
		count++;
		System.out.println(count);
	}
	
	
	

	public static void main(String[] args) {

		
		MemoryCnt_04 mem1=new MemoryCnt_04();
		MemoryCnt_04 mem2=new MemoryCnt_04();
	}

}
