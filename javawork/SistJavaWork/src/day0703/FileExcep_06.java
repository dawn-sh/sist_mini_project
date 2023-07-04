package day0703;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

//score.txt를 읽고 몇개인지 구하고 총점, 평균까지 구해서 출력
public class FileExcep_06 {
	
	public static void scoreRead()
	{
		String fileName="/Users/sunghyunchoi/Desktop/sist0616/file/score.txt";
		BufferedReader br=null;
		FileReader fr=null;
		int cnt=0;
		int total=0;
		double avg=0;
		
		try {
			fr=new FileReader(fileName);
			
			System.out.println("파일을 열었어요");
			
			br=new BufferedReader(fr);
			
			while(true)
			{
				String s=br.readLine();
				
				if(s==null)
					break;
				
				cnt++;//읽은갯수
				
				total+=Integer.parseInt(s);
				
				System.out.println(s);
			}
			avg=(double)total/cnt;
			
			System.out.println("총점: "+total+"\n총갯수: "+cnt);
			System.out.printf("평균: %.2f ",avg);
			
		} catch (FileNotFoundException e) {
			System.out.println("파일이 없어요 "+e.getMessage());
		} catch (IOException e) {
			
		}
		finally {
			//자원은 오픈한 반대순서로 닫기
			try {
				br.close();
				fr.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
		
	}
	

	public static void main(String[] args) {
		scoreRead();
		System.out.println("\n**메모 정상 종료**");
	}

}
