package day0629;

class Shop{
	String sangpum;
	int su;
	
	public Shop(String sang,int su) {
		this.sangpum=sang;
		this.su=su;
	}
	
	public void writeShop() {
		System.out.println("상품: "+sangpum+"\n개수: "+su);
	}
}

/////////////////////////////////////////////////

class MyCart extends Shop{
	
	int price;
	
	public MyCart(String sang, int su, int p) {
		super(sang, su);
		this.price=p;
	}
	
	
	//오버라이딩은 super 위치 상관없이 사용가능
	@Override
	public void writeShop() {
		super.writeShop();
		System.out.println("가격: "+price);
	}
	
}

/////////////////////////////////////////////////
public class Inheri_06 {

	public static void main(String[] args) {
		
		MyCart in=new MyCart("아이폰", 5, 1100000);
		in.writeShop();
	}

}
