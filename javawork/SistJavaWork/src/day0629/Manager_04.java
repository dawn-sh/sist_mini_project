package day0629;

//자식클래스
public class Manager_04 extends Employee_04{
	
	String buseo;
	
	public Manager_04(String name, int sal, String b) {
		super(name, sal); //부모클래스에서 부모생성자 호출
		buseo=b; //자식클래스 초기화
	}
	
	
	//하위 클래스에서 상위 클래스 순/ 재정의하기 위해서 오버라이딩 사용
	//하위클래스 부모클래스의 메서드를 수정해서 사용하는건 - 오버라이딩
	//1.상속이 전제 2.메서드이름 동일 3.리턴타입도 동일
	
	//오버라이딩 부모클래스에서 미완성된 메서드를 상속받아서 자식클래스에 있는걸 추가하고 완성
	@Override
	public String getEmp() {
		return super.getEmp()+","+buseo;
	}
}
