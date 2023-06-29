package day0626;

public class ReviewArr_08 {

	public static void main(String[] args) {
		
		//해당 배열을 for문을 이용하여 출력
		
		//1. ex>0번지: 영환이
		String names[]={"영환이","수환이","동환이","성환이"};
		
		System.out.println("이름");
		for(int i=0;i<names.length;i++)
		{
			System.out.println(i+"번지: "+names[i]);
		}
		System.out.println();
		
		//2.
		int[]nums= {2,4,5,7,8};
		
		System.out.println("숫자");
		for(int i=0;i<nums.length;i++)
			System.out.println(i+"번지: "+nums[i]);
		
		System.out.println();
		
		//flowers
		String flowers []= {"민들레","개나리","벚꽃","진달래"};
		
		System.out.println("꽃 이름");
		for(int i=0;i<flowers.length;i++)
			System.out.println(i+"번지: "+flowers[i]);
		
		System.out.println();
		
		//colors
		String colors[]= {"yellow","blue","green","gray"};
		
		System.out.println("색 이름");
		for(int i=0;i<colors.length;i++)
			System.out.println(i+"번지: "+colors[i]);

	}

}
