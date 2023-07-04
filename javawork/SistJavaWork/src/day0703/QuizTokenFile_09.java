package day0703;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.StringTokenizer;

public class QuizTokenFile_09 {
	
	public static void fruitRead(){
			/*
			 ***과일목록***
			 상품		수량		단가		총금액
			 ----------------------------------
			 바나나	10		5000	50000
			 */
			String fileName="/Users/sunghyunchoi/Desktop/sist0616/file/fruit.txt";
			FileReader fr=null;
			BufferedReader br = null;
			
			try {
				fr=new FileReader(fileName);
				br=new BufferedReader(fr);
				System.out.println("\t***과일목록***");
				System.out.println("상품\t수량\t단가\t총금액");
				System.out.println("----------------------------");
				
				while(true)
				{
					String s=br.readLine();
					
					if(s==null)
						break;
					
					String arr[]=s.split(",");
					System.out.println(arr[0]+"\t"+arr[1]+"개"+"\t"+arr[2]+"원"
										+"\t"+(Integer.parseInt(arr[1])*
												Integer.parseInt(arr[2]))+"원");
												
									
					/*
					StringTokenizer ar=new StringTokenizer(s, ",");
					
					//선생님 풀이
					String sang=ar.nextToken();
					int su=Integer.parseInt(ar.nextToken());
					int dan=Integer.parseInt(ar.nextToken());
					int total=su*dan;
					
					System.out.println(sang+"\t"+su+"개"+"\t"+dan+"원"+"\t"+total+"원");
					*/
										
				}
				
			}catch (IOException e) {
			}
			finally {
				try {
					br.close();
					fr.close();
				} catch (Exception e2) {
				}
			}
			
			
		}

	public static void main(String[] args) {
		fruitRead();
	}

}
