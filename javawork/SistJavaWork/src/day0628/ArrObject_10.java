package day0628;

//웹에서는 DB에서 가져오면 되서 for문 배열로 출력할 일 거의 없음

class MyPersonInfo{
	
	private String name;
	private String blood;//혈액형
	private String age;
	
	//명시적 생산자
	public MyPersonInfo(String name, String blood, String age) {
		this.name=name;
		this.blood=blood;
		this.age=age;
	}
	
	//제목
	//static 변수선언 없이 사용 가능
	public static void title()
	{
		System.out.println("이름\t혈액형\t나이");
		System.out.println("-----------------------");
	}
	
	//출력문
	public void getInfo(){
		System.out.println(name+"\t"+blood+"형\t"+age+"세");
	}
}



//////////////////////////////////////////////////////
public class ArrObject_10 {

	public static void main(String[] args) {
		
		
		
		//생성초기화
		MyPersonInfo arr[]= {new MyPersonInfo("최성현", "B", "27"),
							new MyPersonInfo("이민규", "O", "29"),
							new MyPersonInfo("김형준", "B", "29")};
		
		System.out.println("총: "+arr.length+"명의 정보 출력");
		//static 제목
		MyPersonInfo.title();
		
		//출력
		for(int i=0;i<arr.length;i++)
		{
			//==arr[i].getInfo();
			MyPersonInfo n=arr[i];
			n.getInfo();
		}
		
		System.out.println("-----------------------");
		
		MyPersonInfo.title();
		
		for(MyPersonInfo s:arr)
		{
			s.getInfo();
		}

	}

}
