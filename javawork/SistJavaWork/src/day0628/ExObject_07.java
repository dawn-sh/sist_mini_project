package day0628;

class Score{
	
	private String stuName;
	private int java; //자바과목
	private int oracle;
	private int html;
	
	static final String TITLE="***중간고사 시험결과***\n";
	
	
	//자동 setter getter
	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public int getJava() {
		return java;
	}

	public void setJava(int java) {
		this.java = java;
	}

	public int getOracle() {
		return oracle;
	}

	public void setOracle(int oracle) {
		this.oracle = oracle;
	}

	public int getHtml() {
		return html;
	}

	public void setHtml(int html) {
		this.html = html;
	}
	
	//합계메서드
	public int getTot()
	{
		int t=java+oracle+html;
		return t;
	}
	
	//평균메서드
	public double getAvg()
	{
		double a=getTot()/3.0;
		return a;
	}
	
	
}



//////////////////////////////////////////////
public class ExObject_07 {

	public static void main(String[] args) {
		
		System.out.println(Score.TITLE);
		
		Score in1=new Score();
		in1.setStuName("김지윤");
		in1.setJava(99);
		in1.setOracle(88);
		in1.setHtml(56);
		
		String name=in1.getStuName();
		int java=in1.getJava();
		int oracle=in1.getOracle();
		int html=in1.getHtml();
		
		System.out.println("학생명: "+name+"\n자바점수: "+java+"\n오라클점수: "+oracle+"\nHTML점수: "+html+
							"\n합계점수: "+in1.getTot()+"\n평균점수: "+in1.getAvg());
		System.out.println("=========================================================================");
		
		Score in2=new Score();
		in2.setStuName("김동현");
		in2.setJava(79);
		in2.setOracle(68);
		in2.setHtml(76);
		
		String name2=in2.getStuName();
		int java2=in2.getJava();
		int oracle2=in2.getOracle();
		int html2=in2.getHtml();
		
		System.out.println("학생명: "+name2+"\n자바점수: "+java2+"\n오라클점수: "+oracle2+"\nHTML점수: "+html2+
							"\n합계점수: "+in2.getTot()+"\n평균점수: "+in2.getAvg());
		System.out.println("=========================================================================");

	}

}
