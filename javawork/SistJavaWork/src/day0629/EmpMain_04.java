package day0629;

public class EmpMain_04 {

	public static void main(String[] args) {
		// 최지우,2500000,기획경영부 라고 출력하려면?
		
		Manager_04 man=new Manager_04("최지우", 2500000, "기획경영부");
		
		System.out.println(man.getEmp()); //재정의된 메서드 호출
										  //부모-> 자식 오버라이딩 해서 자식 생성자 값이 나옴
										  //호출을 부모꺼로 하면 부모클래스 생성자 값/ 자식꺼로 하면 자식클래스 생성자 값
	}

}
