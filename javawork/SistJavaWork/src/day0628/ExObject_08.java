package day0628;

class Apple{
	
	private String writer;
	private String subject;
	private static String msg="Happy Day!!";
	
	//각각의 set,get
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public static String getMsg() {
		return msg;
	}
	public static void setMsg(String msg) {
		Apple.msg = msg;
	}
	
	
	
}





////////////////////////////////////////////////////
public class ExObject_08 {
	
	//다른 클래스에서 여기 클래스로 new 생성자 없이 가져오는 법 
	
	//static은 생성안하고 그냥 출력하려고 사용
								//Apple이라는 클래스를 통째로 가져와서 apl이라하자
								//클래스명 변수이름
	public static void writeApple(Apple apl) {
		
		System.out.println("***Apple클래스 출력***");
		
		System.out.println("작성자: "+apl.getWriter());
		System.out.println("제목: "+apl.getSubject());
	}
	
	
	public static void main(String[] args) {
		
		System.out.println("Apple클래스의 메세지 출력");
		System.out.println(Apple.getMsg());
		
		//생산자로 set가져오기 때문에 new로 호출해봄
		Apple a1=new Apple();
		a1.setWriter("김은희");
		a1.setSubject("악귀 재밌더라구요");
		
		Apple a2=new Apple();
		a2.setWriter("김병건");
		a2.setSubject("초보 개밸자의 하루");
		
		
		//public static void writeApple(Apple apl)로 출력
		//writeApple 호출
		//class ExObject_08에서 출력했기 때문에 클래스명 생략 가능
		writeApple(a1);
		writeApple(a2);
		

	}

}
