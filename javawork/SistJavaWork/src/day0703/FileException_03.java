package day0703;

import java.io.IOException;
import java.io.InputStream;

public class FileException_03 {

	public static void main(String[] args) {
		
		//Stream은 한글 1글자의 바이트도 못 넣음
		//1바이트만 가능
		//oracle 사용하면 안해도됨
		InputStream is=System.in;
		
		int a=0;
		
		System.out.println("한글자 입력:");
		try {
			a=is.read();//읽어오는 것//처리안하면 무조건 오류가 나서 빨간줄발생
						//multicatch - catch가 하나 더 옴
		} catch (IOException e) {
			//e.printStackTrace();//어디서 에러가 나는지 확인하기 위한 것
			System.out.println("오류: "+e.getMessage());
		}
		
		System.out.println("***3초 뒤 출력***");
		
		//Thread 발생하면 무조건 try/catch 처리
		try {
			Thread.sleep(3000); //몇 초 할건지
		} catch (InterruptedException e) {
			e.printStackTrace();
		} 
		
		System.out.println("입력값: "+(char)a);
	}

}
