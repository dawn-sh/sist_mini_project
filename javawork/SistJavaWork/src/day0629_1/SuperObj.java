package day0629_1;
/* 부모클래스가 다른 패키지에 있을경우 protected,public 변수는 접근이 가능하다
 * 같은 패키지인 경우에는 private만 빼고 모두 접근 가능하다  */

//보통 부모클래스에 super를 씀
public class SuperObj {
	
	protected String name;
	protected int age;
	
	public SuperObj(String name, int age) {
		
		this.name=name;
		this.age=age;
	}

}
