package day0629;

//항상 순서는 부모-> 자식


//부모클래스
public class Employee_04 {

	String sawonName;
	int salary;
	
	public Employee_04(String name, int sal) {
		this.sawonName=name;
		this.salary=sal;
	}
	
	
	//리턴 메서드
	public String getEmp()
	{
		return sawonName+","+salary; //-> String + int = String
	}
	//추상메서드 public String getEmp(); -> {}가 없음
}
