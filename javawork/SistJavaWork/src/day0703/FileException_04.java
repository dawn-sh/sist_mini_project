package day0703;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class FileException_04 {
	
	public static void read()
	{
		String fileName="/Users/sunghyunchoi/Desktop/sist0616/file/monday.txt";
		BufferedReader br=null;
		FileReader fr=null;
		
		try {
			fr=new FileReader(fileName);
			
			System.out.println("파일을 열었어요!");
			
			br=new BufferedReader(fr);
			
			//여러줄 읽을 땐 while(true) 사용
			while(true)
			{
				//메모장에서 내용을 한 줄씩 읽어온다
				String s=br.readLine(); //catch ioexception 한 번 더 하면 에러 제거
				
				//마지막 줄일 경우 null값을 읽어서, null값일 경우 빠져나가기
				if(s==null)
					break;
				
				System.out.println(s);
			}
			
				//예외처리 변수=new FileReader(String의 변수); 파일이 없을 경우
		} catch(FileNotFoundException e) {
			//e.printStackTrace();
			System.out.println("파일이 없어요"+e.getMessage());
				//String s=br.readLine();의 input/output 예외사항 처리 
		}catch (IOException e) {
			
		}finally {
			//자원은 항상 반대로 반납
			//fr -> br 해서 br 먼저 닫아줌
			try {
				br.close(); //-> 파일 읽는걸 닫고
				fr.close(); //-> 파일 여는걸 닫는다
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}

	public static void main(String[] args) {
		
		read();
		System.out.println("***메모 정상종료***");
	}

}
