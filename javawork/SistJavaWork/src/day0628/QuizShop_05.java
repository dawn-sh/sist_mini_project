package day0628;

class MyShop{
	
	private String sangpumName;
	private String ipgoday;
	private String chulgoday;
	
	//3개의 데이터를 한 번에 수정할 수 있는 메서드
	public void setData(String s, String i, String c) {
		this.sangpumName=s;
		this.ipgoday=i;
		this.chulgoday=c;
	}
	
	
	//3개의 데이터를 한 번에 출력할 수 있게 메서드
	/*public void getData() {
		System.out.println("품명: "+sangpumName+"\n입고일: "+ipgoday+"\n출고일: "+chulgoday);
	}
	*/
	
	//한꺼번에 return 받기...String값만 return
	public String getData()
	{
		String s="상품명: "+sangpumName+"\t입고날짜: "+ipgoday+"\t출고일자: "+chulgoday;
		
		return s;
	}
	
}

public class QuizShop_05 {

	public static void main(String[] args) {
		
		System.out.println("***상품입고***");
		
		/*MyShop in1=new MyShop();
		in1.setMyshop("키보드", "2023-06-01", "2023-06-20");
		in1.getMyshop();
		
		System.out.println("---------------------------------------");
		
		MyShop in2=new MyShop();
		in2.setMyshop("Monitor", "2023-06-04", "2023-06-23");
		in2.getMyshop();*/
		
		//한꺼번에 return 받았을떄
		MyShop shop1=new MyShop();
		shop1.setData("monitor","2023-01-01","2023-05-30");
		System.out.println(shop1.getData());
		

	}

}
