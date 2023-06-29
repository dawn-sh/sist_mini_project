package day0628;

import java.util.Scanner;

//메인클래스

public class SawonMain {
	
	//최종출력 메서드
	public static void getSawon(Sawon sawon[]) {
		
		//제목
		Sawon.getTitle();
		
		for(Sawon s:sawon)
		{
			System.out.println(s.getSawonName()+"\t"+s.getPay()+"\t"+s.getFamSu()+"\t"+s.getTimeSu()+"\t"
								+s.getFamilySudang()+"\t"+s.getTimeSudang()+"\t"+s.getTotalPay());
		}
	}

	public static void main(String[] args) {

		Scanner sc=new Scanner(System.in);
		
		int inwon;//총 몇명인지 입력
		
		Sawon sawon[];
		
		System.out.println("입력할 직원수는?");
		inwon=Integer.parseInt(sc.nextLine()); //배열갯수 할당
		
		//배열할당 쓴 수만큼의 사원만 입력가능
		sawon=new Sawon[inwon];
		
		//인원수만큼 데이터 입력
		//inwon이 사원의 수이기 때문에
		for(int i=0;i<inwon;i++)
		{
			//sawon생성
			sawon[i]=new Sawon();
			
			System.out.println("사원명?");
			String name=sc.nextLine();
			
			System.out.println("급여는?");
			int pay=Integer.parseInt(sc.nextLine());
			
			System.out.println("가족 수는?");
			int fs=Integer.parseInt(sc.nextLine());
			
			System.out.println("시간시간?");
			int ts=Integer.parseInt(sc.nextLine());
			
			//setter로 sawon클래스에 데이터를 넣기
			sawon[i].setSawonName(name);
			sawon[i].setPay(pay);
			sawon[i].setFamSu(fs);
			sawon[i].setTimeSu(ts);
		}
		//getter 출력
		getSawon(sawon);
	}

}
