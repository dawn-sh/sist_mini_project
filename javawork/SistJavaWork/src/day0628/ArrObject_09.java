package day0628; //배열로 출력

class Student{
	
	private String sname;
	private String hp;
	private int grade;
	
	//명시적 생성자
	public Student(String n, String hp, int g) {
		
		this.sname=n;
		this.hp=hp;
		this.grade=g;		
	}
	
	//멤버값 출력 데이터
	//int String 섞여서 return값 받기보다는 한 번에 출력값 넣는게 낫다
	public void getData() {
		System.out.println("이름: "+sname);
		System.out.println("연락처: "+hp);
		System.out.println("학년: "+grade+"학년");
	}
	
}

public class ArrObject_09 {

	public static void main(String[] args) {
		
		//자료형 참조변수명[]=new 자료형[갯수];
		//클래스명 참조변수명[]=new 클래스명[갯수];
		/*Student stu[]=new Student[3];
		
		stu[0]=new Student("최성현", "010-9773-7503", 5);
		stu[1]=new Student("이성신", "010-2352-4356", 4);
		stu[2]=new Student("진현규", "010-8234-3426", 2);
		*/
		
		//클래스명 참조변수명[]={new 클래스명(인자값1),new 클래스명(인자값2)}
		Student stu[]= {
						new Student("최성현", "010-9773-7503", 5),
						new Student("이성신", "010-2352-4356", 4),
						new Student("진현규", "010-8234-3426", 2)};
		
		//출력#1 for문
		for(int i=0;i<stu.length;i++)
		{
			Student s=stu[i];
			s.getData();
			//==stu[i].getData();
			System.out.println("------------------------------");
		}
		
		//출력#2 for~each
		//for(자료형 참조변수명:배열)
		//for(클래스명 참조변수명:배열)
		for(Student s1:stu)
		{
			s1.getData();
			System.out.println("==============================");
		}
		
		

	}

}
