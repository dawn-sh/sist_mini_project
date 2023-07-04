package day0704;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;

public class SwingEvent_07 extends JFrame {
	
	Container cp;
	JButton btn1,btn2;
	
	public SwingEvent_07(String title) {
		super(title);
		cp=this.getContentPane();
		this.setBounds(200, 100, 300, 400);
		cp.setBackground(new Color(255,255,100));
		setDesign();
		setVisible(true);
	}
	
	public void setDesign() {
		
		this.setLayout(new FlowLayout());//가로세로 쭉 늘리는거
		
		//버튼 1생성 이벤트
		btn1=new JButton("배경색을 핫핑크로 변경");
		this.add(btn1);
		
		//직접 익명 내부클래스로 actionlistener 추가
		btn1.addActionListener(new ActionListener() {
			
			//버튼 클릭시 색변경
			@Override
			public void actionPerformed(ActionEvent e) {
				cp.setBackground(Color.magenta);
			}
		});
		
		
		
		//버튼 2생성 이벤트
		btn2=new JButton("배경색을 그레이로 변경");
		this.add(btn2);
		
		btn2.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				cp.setBackground(Color.gray);
			}
		});
	}

	public static void main(String[] args) {
		
		new SwingEvent_07("스윙이벤트_7");

	}

}
