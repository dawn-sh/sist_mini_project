package day0623;

import java.util.Scanner;

public class QuizArrFind_13 {

	public static void main(String[] args) {
		//이름을 입력해서 없으면 없다고 있으면 몇 번째 있는지 알려주세요
		
		
		Scanner sc=new Scanner(System.in);
		
		String [] stuNames= {"이성신","이민규","박병주","최성현","김영준","강연주","최진평","고은비","송주영"};
		
		String inName;
		boolean flag; //boolean flag=false; 해도 되지만 while 안에 false 값을 초기화 해줘야 제대로 돌아감
		
		while(true)
		{
			System.out.print("이름을 입력해주세요: ");
			inName=sc.nextLine();
			
			if(inName.equals("끝"))
			{
				System.out.println("종료합니다");
				break;
			}
				
			
			flag=false;
			
						
			for(int i=0;i<stuNames.length;i++)
			{
				if(inName.equals(stuNames[i]))
				{
					flag=true;
					System.out.println((i+1)+"번째에 있습니다");
				}
			}
			
			if(!flag)
				System.out.println(inName+"은 데이터에 없습니다");
		}

	}

}
