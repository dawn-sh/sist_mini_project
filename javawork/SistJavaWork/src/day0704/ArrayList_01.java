package day0704;

import java.util.ArrayList;
import java.util.List;

public class ArrayList_01 {

	public static void main(String[] args) {
		
		String flowers[]= {"장미","프리지아","다알리아","수국"};
		
		//객체 삽입, 삭제할 수 있는 컨테이너 클래스 생성
		//한가지 유형만 담겠습니다 -> 제네릭 / 제네릭 안에 클래스타입이 들어감
		//List,Set,Map<> 전체유형이 컬렉션
		//ArrayList 와 List의 차이는 인터페이스와 그것을 구현하는 클래스
		ArrayList<String> list=new ArrayList<String>();
		
		//데이터 담기 //flowers->list
		for(String f:flowers)
			list.add(f);//삽입 //배열갯수만큼 String f에 추가
		
		System.out.println("size: "+list.size());
		
		System.out.println("#출력1_for");
		
		for(int i=0;i<list.size();i++)
		{
			String s=list.get(i);
			System.out.println(s);
		}
		
		System.out.println("#출력2_for~each");
		
		for(String fr:list)
			System.out.println(fr);

	}

}
