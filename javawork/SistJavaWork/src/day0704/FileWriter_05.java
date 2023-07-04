package day0704;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;

public class FileWriter_05 {
	
	//FileWriter fw;//클래스는 자동 초기값 지정이기에 null 안줘도 됨
	
	public static void filewrite()
	{
		FileWriter fw=null;//메서드 안에서 초기값 지정해야하기 때문에 null 선언
																//경로/저장할파일이름.확장자
		String fileName="/Users/sunghyunchoi/Desktop/sist0616/file/filetest1.txt";
		
		try {
			fw=new FileWriter(fileName); //파일 새로 생성(같은 이름이 있어도 새로 생성)
			
			//파일에 내용 추가
			fw.write("Have a Nice Day!!!!\n"); //메모장줄넘김
			fw.write(new Date().toString()); //날짜를 String 형식으로 넘김
			System.out.println("***파일 저장 성공!!***");
			
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				fw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public static void filewrite2()
	{
		FileWriter fw=null;
		String fileName="/Users/sunghyunchoi/Desktop/sist0616/file/fileTest2.txt";
		
		
		try {
			fw=new FileWriter(fileName, true);//추가모드 //1번 더 실행하면 같은 글귀가 또 생성됨
			
			fw.write("내 이름은 홍길동\n");
			fw.write("=========================\n");
			
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				fw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	

	public static void main(String[] args) {

		filewrite();
		filewrite2();
	}

}
