package day0629;

class MyTv{
	
	private String che;//채널
	private String vol;//볼륨
	
	

	
	public String getChe() {
		return che;
	}
	public void setChe(String che) {
		this.che = che;
	}
	public String getVol() {
		return vol;
	}
	public void setVol(String vol) {
		this.vol = vol;
	}
	
	public static void title() {
		System.out.println("**tv시청목록**");
	}
	
	/*
	public MyTv(String che, String vol) {
		this.che=che;
		this.vol=vol;
	}
	
	public void getMyTv() {
		System.out.println(che+"를 시청합니다\n볼륨은 "+vol+"데시벨 입니다");
	}
	*/
}









public class RevieObject_01 {

	public static void main(String[] args) {
		
		MyTv in1=new MyTv();
		
		MyTv.title();
		
		in1.setChe("ebs");
		in1.getChe();
		in1.setVol("15");
		in1.getVol();
		
		MyTv in2=new MyTv();
		
		in2.setChe("tbn");
		in2.getChe();
		in2.setVol("18");
		in2.getVol();
		
		

	
		System.out.println(in1.getChe()+"채널을 시청합니다\n볼륨은 "+in1.getVol()+"데시벨 입니다");
		System.out.println("---------------------------------------------------");
		System.out.println(in2.getChe()+"채널을 시청합니다\n볼륨은 "+in2.getVol()+"데시벨 입니다");
		
		/*
		MyTv.title();
		
		MyTv arr[]= {new MyTv("ebs", "15"), new MyTv("tbn", "18")};
		
		for(int i=0;i<arr.length;i++)
		{
			arr[i].getMyTv();
		}
		*/
		
	}

}
