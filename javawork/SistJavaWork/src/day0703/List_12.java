package day0703;

import java.util.List;
import java.util.Vector;

//가장 많이 사용하는 Interface List
//List Interface를 구현한 Vector,ArrayList(가장 폭이 넓음,가장 많이 사용)
//순차적으로 데이터 들어감, 중복 데이터 허용
//처음생성시 일정한 개수로 생성, 그 이상의 데이터를 넣으면 공간이 자동증가
public class List_12 {

	public static void main(String[] args) {
		
		//List를 가장 많이 씀/Vector로도 사용가능
		Vector<String> list=new Vector<String>();
		//List<String> list=new Vector<String>();
		
		System.out.println("초기할당크기: "+list.capacity());
		System.out.println("초기 데이터 크기: "+list.size());
		
		list.add("사과");
		list.add("포도");
		list.add("키위");
		list.add("사과");//중복가능
		list.add("바나나");
		list.add("오렌지");
		
		System.out.println("초기할당크기: "+list.capacity());
		System.out.println("초기 데이터 크기: "+list.size());
		
		System.out.println("출력#1");
		
		//가장 많이 사용하는 출력 법
		for(int i=0;i<list.size();i++)
		{
			String s=list.get(i);//->리스트에서는 get으로 사용
			System.out.println(s);
		}
		
		System.out.println("출력#2");
		
		for(String s:list)
			System.out.println(s);
		
		System.out.println("출력#3");
		
		Object ob[]=list.toArray();
		
		for(int i=0;i<ob.length;i++)
		{
			String s=(String)ob[i];
			System.out.println(s);
		}
	}

}
