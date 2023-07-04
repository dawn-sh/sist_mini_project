package day0630;

interface InterAA{
	
	public void eat();
	public void go();
	
}

////////////////////////////////////////////////////

interface InterBB extends InterAA{
	
	public void ride();
}

////////////////////////////////////////////////////

class InterImpl2 implements InterBB{

	@Override
	public void eat() {
		System.out.println("저녁을 먹어요");
	}

	@Override
	public void go() {
		System.out.println("롯데월드 가요");
	}

	@Override
	public void ride() {
		System.out.println("자전거 타고 놀아요");
	}	
}

////////////////////////////////////////////////////

public class InterExtends_03 {

	public static void main(String[] args) {
		
		InterImpl2 a=new InterImpl2();
		a.eat();
		a.go();
		a.ride();
		
		
		InterBB c=new InterImpl2();
		c.eat();
		c.go();
		c.ride();
	}
}
