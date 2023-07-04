package day0630;

//익명 내부클래스란? 이름 없는 클래스로서 이벤트 발생시 생성되었다가 끝나면 메모리에서 제거
//->메모리의 효율적관리_모바일에서 이벤트 방식으로 많이 쓴다
//모바일 안드로이드에서 많이 사용

abstract class AbstEx{
	
	abstract public void show();
	
}
///////////////////////////////////////////////////////////////////////
class OuterEx{
	
	
	//클래스명 변수명=new 클래스명() 자동 완성하면 inner 오버라이딩 가능
	//->추상적 클래스/메서드는 오버라이딩을 목적으로 사용 가능하기 때문
	AbstEx ab=new AbstEx() {
		
		@Override
		public void show() {
			System.out.println("익명내부 클래스");
		}
	};
	
}

/////////////////////////////////////////////////////////////////////////
public class Annonymous_13 {

	public static void main(String[] args) {
		
		
		//ab는 ex변수를 통해서 들어갈 수 있음
		OuterEx ex=new OuterEx();
		ex.ab.show();

	}

}
