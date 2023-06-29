package day0628;

class Member{
	
	private String stuName; //학생명
	private String gender; //성별
	private String addr; //주소
	
	static String ban; //반
	static int cnt=0; //학생 수 //static이 아니면 학생1정보의 숫자를 하나씩 적어줘야함
	
	
	//수정용 메서드
	public void setMembers(String name,String gd,String addr)
	{
		this.stuName=name;
		this.gender=gd;
		this.addr=addr;
	}
	
	
	//출력용 메서드
	public void getMembers()
	{
		cnt++; //학생x정보 x에 숫자를 1,2,3 차례대로 넣어주기 위해 static으로 공유한 주소값 증가
		
		System.out.println("**학생"+cnt+"정보**");
		System.out.println("학생명: "+this.stuName);
		System.out.println("소속학급: "+Member.ban); //같은 클래스에서는 Member.(클래스명.) 생략가능
												   //다른 클래스에서는 필수
		System.out.println("성별: "+this.gender);
		System.out.println("주소: "+this.addr);
		System.out.println("-----------------------------");
	}
}



///////////////////////////////////////////////////
public class ExObject_06 {

	public static void main(String[] args) {
		
		Member m1=new Member();
		Member.ban="쌍용 자바 7강의장";
		m1.setMembers("최성현", "남자", "서울시 강동구");
		m1.getMembers();
		
		Member m2=new Member();
		m2.setMembers("장신영", "여자", "인천시");
		m2.getMembers();

	}

}
