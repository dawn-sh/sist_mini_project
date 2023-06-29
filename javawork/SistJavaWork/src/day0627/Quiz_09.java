package day0627;

public class Quiz_09 {
	
	/* 내가 푼 것
	private String list;
	private static String place;
	private int price;
	
	
	public void setList(String list)
	{
		this.list=list;
	}
	
	public static void setPlace(String place)
	{
		Quiz_09.place=place;
	}
	
	public void setPrice(int price)
	{
		this.price=price;
	}
	
	public void getList()
	{
		System.out.println("상품명: "+list);
	}
	
	public static void getPlace()
	{
		System.out.println("쇼핑장소: "+place);
	}
	
	public void getPrice()
	{
		System.out.println("가격: "+price+"원");
	}*/
	
	
	//선생님 풀이
	
	//변수선언
	static String SHOPNAME="이마트";
	private String sangName;//null
	private int price;//0
	
	
	//set메서드
	public void setSangName(String name)
	{
		sangName=name;
	}
	
	public void setPrice(int price)
	{
		this.price=price;
	}
	
	//get메서드
	public String getSangName()
	{
		return sangName;
	}

	public int getPrice()
	{
		return price;
	}
}
