package day0629;

public class TestObj_03 {

	public static void main(String[] args) {

		//생성
		//자식클래스에 부모 상속을 받았기 때문에 자식클래스로 호출해야함
		SubObj_03 sub=new SubObj_03("이효리", 22, "제주시 애월");
		//메서드호출
		sub.write();
	}

}
