package day0629;

import day0629_1.SuperObj;

//java.lang.object -> 자바의 조상이기 때문에 여기서 상속받아 scanner calendar 사용 가능했음

//자식 클래스에 Subject를 붙임
					   //extends 클래스명-상속받겠다

//부모클래스에서 자식클래스에 상속받아오니까 자식클래스가 더 큰 개념이 된다
public class SubObj_03 extends SuperObj{
	
	//뭘 넣어도 상관없다(private,디폴트(instance)) - 메인용 클래스가 같은 패키지에 있기 때문
		String addr;
	
	
	//부모 클래스에 있던걸 그대로 가져옴
	//extends 부모클래스 하면 자식클래스명 아래에 빨간줄이 뜸 -> add constructor 클릭해서 부모클래스 상속
	//부모클래스 저장해야 에러가 안뜸 -> 저장 안하면 extends하는 순간 에러 
	public SubObj_03(String name, int age, String addr) {
		super(name, age);//상속받은걸 무조건 첫 줄에 넣어야함
		this.addr=addr;//자식클래스에 있는건 부모클래스에서 상속받은 것 밑에 적어야함
	}
	
	public void write()
	{
		System.out.println("이름: "+this.name); //상속받아와서 같은 클래스에 있기때문에 여기서는 this. 사용 가능
		System.out.println("나이: "+this.age);
		System.out.println("주소: "+this.addr);
	}
	
	//슈퍼(부모)클래스의 디폴트 생성자는 오류발생
	/*public SubObj_03() {
		
	}*/
}
