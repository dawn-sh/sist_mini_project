package day0627;

public class Quiz_10 {

	//멤버변수선언
	private String sangpum;//상품명
	int su; //수량
	int dan; //단가
	static String SHOPNAME="롯데마트"; //상점
	
	public Quiz_10(String sang,int su, int dan)
	{
		sangpum=sang;
		this.su=su;
		this.dan=dan;
	}
	
	public String getSangpum()
	{
		return sangpum;
	}
	
	public int getSu()
	{
		return su;
	}
	
	public int getDan()
	{
		return dan;
	}
}
