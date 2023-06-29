package day0629;

public class FoodBaedalMain {

	public static void main(String[] args) {
		
		//1
		Food34 food=new Food34();
		food.order();
		food.beadal();
		System.out.println();
		
		//2
		//인터페이스명...부모클래스명과 동일하다고 보면됨
		FoodGage f=null;
		f=new Food34();
		//== Foodgage f=new Food34();
		f.order();
		f.beadal();

	}

}
