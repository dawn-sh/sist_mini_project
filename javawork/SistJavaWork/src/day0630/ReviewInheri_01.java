package day0630;

class Market{

	private String sangpum;
	private int su;
	
	//생성자는 생성과 동시에 초기화
	public Market() {
		sangpum="딸기";
		su=5;
	}

	
	public Market(String sangpum, int su) {
		this.sangpum=sangpum;
		this.su=su;
	}
	
	public void getMarket() {
		System.out.println("상품명: "+sangpum);
		System.out.println("수량: "+su);
	}
}

//////////////////////////////////////////////
class MyMarket extends Market{
	
	private int price;
	
	public MyMarket() {
		//super();//생략되있음
		price=5000;
	}
	
	public MyMarket(String sangpum, int su, int price) {
		super(sangpum,su);
		this.price=price;
	}
	
	
	@Override
	public void getMarket() {
		System.out.println("단가: "+price);
		super.getMarket();
	}
}


public class ReviewInheri_01 {

	public static void main(String[] args) {
		
		//디폴트
		MyMarket a=new MyMarket();
		a.getMarket();
		System.out.println();
		
		//명시적
		MyMarket b=new MyMarket("오렌지", 5, 5000);
		b.getMarket();

	}

}
