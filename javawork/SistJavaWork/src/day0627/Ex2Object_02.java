package day0627; //main과 연결되려면 하나는 메인이 없고 하나는 메인 있어야함 //메인은 하나만 있어야하니까
				 //연결된 것들을 하나의 페이지에 표시 가능한데 이때 public은 하나만 생성가능

//멤버 만들기용 클래스
public class Ex2Object_02 {

	
	//static이 안 붙으면 무조건 instance 변수
	
	//클래스 변수선언의 가장 큰 목적은 공유할 때
	//2개의 instance 변수,2개의 static(클래스)변수_4개의 멤버변수
	//메모리 각각 할당(개별)
	String kind; //카드의 무늬
	int number; //카드의 숫자
	
	
	//클래스변수-같은 클래스의 모든 instance들이 공유
	//instance 생성 없이 클래스이름.클래스변수명으로 접근
	//클래스가 로딩될때 생성/종료하면 소멸
	//메모리 하나만 할당(공유)
	static int width; //카드의 폭
	static int height; //카드의 높이
}
