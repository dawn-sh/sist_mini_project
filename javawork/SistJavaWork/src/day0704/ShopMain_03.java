package day0704;

import java.util.Scanner;
import java.util.Vector;

//복습문제

/*
 명시적 디폴트 생성자 알아서
 1.상품입고	2.상품재고		9.종료
 1
 상품명? 바나나
 수량? 10
 가격? 1000
 2
 번호		상품명	수량		가격		총가격
 1		바나나	10		1000	10000
 */

public class ShopMain_03 {
	
	Vector<Shop> list=new Vector<Shop>();
	
	public void inputShop() {
		Scanner sc=new Scanner(System.in);
		String sangName;
		int su;
		int dan;

		System.out.print("상품명? ");
		sangName=sc.nextLine();
		System.out.print("수량? ");
		su=Integer.parseInt(sc.nextLine());
		System.out.print("가격? ");
		dan=Integer.parseInt(sc.nextLine());

		
		Shop sh=new Shop(sangName, su, dan);
		
		list.add(sh);
		
		System.out.println();
	}
	
	public void outputShop() {
		System.out.println("번호\t상품명\t수량\t가격\t총가격");
		System.out.println("-----------------------------------------");
		
		for(int i=0;i<list.size();i++)
		{
			Shop s=list.get(i);
			int total=s.getSu()*s.getDan();
			
			System.out.println((i+1)+"\t"+s.getSangName()+"\t"+s.getSu()+"\t"
								+s.getDan()+"\t"+total);
			System.out.println("-----------------------------------------");
		}
	}

	public static void main(String[] args) {

		ShopMain_03 sm=new ShopMain_03();
		
		Scanner sc=new Scanner(System.in);
		int n;
		
		while(true)
		{
			System.out.println("1.상품입고\t2.상품재고\t9.종료");
			n=Integer.parseInt(sc.nextLine());
			
			if(n==1)
				sm.inputShop();
			else if(n==2)
				sm.outputShop();
			else if(n==9)
			{
				System.out.println("프로그램 종료");
				break;
			}
			else
			{
				System.out.println("잘 못 입력했어요");
				continue;
			}
			
		}
	}

}
