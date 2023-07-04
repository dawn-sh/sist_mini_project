package day0630;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;

import javax.swing.JButton;
import javax.swing.JFrame;

public class SwingLayout_08 extends JFrame {
	
	//전역변수
	Container cp;
	JButton btn1; //버튼 생성
					//J붙은건 거의 다 JFrame
	
	public SwingLayout_08(String title) {
		
		super(title);
		
		this.setBounds(200, 100, 300, 500);
		
		//컨테이너 전역변수선언해서 색표현 가능
		cp=this.getContentPane();
		cp.setBackground(new Color(255,255,200));
		
		//버튼생성
		btn1=new JButton("버튼1");
		//frame에 버튼 추가
		//frame 기본 레이아웃이 BorderLayout(동서남북)
		//BorderLayout추가시 위치 지정
		
		//this.add(btn1, BorderLayout.NORTH);//위쪽
		//this.add(btn1, BorderLayout.SOUTH);//아래쪽
		this.add("North", btn1); //첫글자 대문자로	
		
		//생성과 동시에 프레임 추가 위치지정
		this.add("South",new JButton("아래쪽"));
		this.add("West",new JButton("왼쪽"));
		this.add("East",new JButton("오른쪽"));
		this.add("Center",new JButton("가운데"));
		
		
		//버튼1에 속성
		btn1.setBackground(Color.cyan); //색깔넣기
		btn1.setForeground(Color.white); //글자색
	
		
		this.setVisible(true);
		
	}
	
	//디자인... 나중에 많아지면 따로 만들어서 오버로딩이나 extends
	
	//액션 .. visible위에

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		new SwingLayout_08("스윙 레이아웃 연습");
	}

}
