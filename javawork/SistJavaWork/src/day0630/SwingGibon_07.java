package day0630;

import java.awt.Color;

import javax.swing.JFrame;

//class에 extends JFrame
//JFrame 안될 경우 module 있는지 확인하고 삭제
public class SwingGibon_07 extends JFrame{
	
	//생성자에 다 만들어줘야함
	//메서드를 따로 만들어줘도 생성자에 호출해줘야함
	public SwingGibon_07(String title) {
		super(title);
		
		//시작위치, 너비, 높이
		this.setBounds(500, 100, 500, 500); //this. 는 JFrame이라고 생각
		
		//종료
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		//배경색
		//==this.setBackground(Color.MAGENTA); 
		//this.setBackground(new Color(190,242,200));
		//this는 frame을 가르키는건데 frame 위에 막이 하나 더있어서 색변경x
		//그래서 컨테이너 가져와야함
		this.getContentPane().setBackground(Color.cyan);
		
		
		
		//frame 보이게
		this.setVisible(true);
	}

	public static void main(String[] args) {

		new SwingGibon_07("스윙기본");//생성자 호출만 
	}

}
