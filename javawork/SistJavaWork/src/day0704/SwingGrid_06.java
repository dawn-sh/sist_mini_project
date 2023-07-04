package day0704;

import java.awt.Color;
import java.awt.Container;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class SwingGrid_06 extends JFrame implements ActionListener{
	
	Container cp;
	ImageIcon icon1=new ImageIcon("/Users/sunghyunchoi/Desktop/sist0616/Swingimage/swingimage/img2.gif");
	ImageIcon icon2=new ImageIcon("/Users/sunghyunchoi/Desktop/sist0616/Swingimage/logoImg/images02.jpg");
	ImageIcon icon3=new ImageIcon("/Users/sunghyunchoi/Desktop/sist0616/Swingimage/logoImg/ironman.png");
	ImageIcon icon4=new ImageIcon("/Users/sunghyunchoi/Desktop/sist0616/Swingimage/logoImg/images03.jpg");
	
	//버튼선언
	JButton btn1,btn2,btn3,btn4;
	
	public SwingGrid_06(String title) {
		super();
		cp=this.getContentPane();
		this.setBounds(200, 100, 300, 400);
		cp.setBackground(new Color(255,255,100));
		setDesign();
		setVisible(true);
	}
	
	public void setDesign()
	{
		//버튼4개 생성
		this.setLayout(new GridLayout(2, 2));//버튼 2행 2열 배치
		btn1=new JButton("hello", icon1);
		btn1.setVerticalTextPosition(JButton.BOTTOM); //텍스트 세로위치 가운데
		btn1.setHorizontalTextPosition(JButton.CENTER); //텍스트 가로위치 아래
		this.add(btn1);
		
		btn1.setRolloverIcon(icon2);//마우스를 위에 올렸을때 아이콘
		btn1.setPressedIcon(icon3);//클릭할때 아이콘
		
		//2
		btn2=new JButton(icon4);
		this.add(btn2);
		
		//3
		btn3=new JButton("JAVA");
		this.add(btn3);
		
		//4
		btn4=new JButton("Hi!!", icon2);
		this.add(btn4);
		
		
		//이벤트객체
		btn1.addActionListener(this);
		btn2.addActionListener(this);
		btn3.addActionListener(this);
		btn4.addActionListener(this);
	}

	public static void main(String[] args) {

		new SwingGrid_06("그리드 레이아웃");
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		
		Object ob=e.getSource();
		
		//선택하기 위한 변수를 줌
		if(ob==btn1)
			JOptionPane.showMessageDialog(this, "1번 이미지 입니다");
		else if(ob==btn2)
			JOptionPane.showMessageDialog(this, "2번 이미지 입니다");
		else if(ob==btn3)
			JOptionPane.showMessageDialog(this, "3번 JAVA글씨 입니다");
		else if(ob==btn4)
			JOptionPane.showMessageDialog(this, "4번 이미지 입니다");
	}

}
