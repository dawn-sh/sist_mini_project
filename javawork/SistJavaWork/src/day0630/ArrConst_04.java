package day0630;

abstract class Game{
	
	abstract void play();
	abstract void stop();
}

/////////////////////////////////////////////////
class SungHyeon extends	Game{

	@Override
	void play() {
		System.out.println("성현이가 게임을 합니다");
	}

	@Override
	void stop() {
		System.out.println("성현이가 게임을 종료합니다");
	}
}
/////////////////////////////////////////////////
class SoonYeong extends Game{

	@Override
	void play() {
		System.out.println("순영이가 게임을 합니다");
	}

	@Override
	void stop() {
		System.out.println("순영이가 게임을 종료합니다");
	}
	
	
}
/////////////////////////////////////////////////
class SunBum extends Game{

	@Override
	void play() {
		System.out.println("선범이가 게임을 합니다");
	}

	@Override
	void stop() {
		System.out.println("선범이가 게임을 종료합니다");
	}
	
	
}

//////////////////////////////////////////////////
public class ArrConst_04 {

	public static void main(String[] args) {

		Game arr[]= {new SungHyeon(),new SoonYeong(),new SunBum()};
		
		for(int i=0;i<arr.length;i++)
			arr[i].play();
		System.out.println("-----------------------");
		for(int i=arr.length-1;i>=0;i--)
			arr[i].stop();
	}

}
