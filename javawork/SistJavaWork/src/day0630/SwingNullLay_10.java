package day0630;

import java.awt.Color;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class SwingNullLay_10 extends JFrame implements ActionListener{

	Container cp;
	JButton btn1,btn2;
	
	public SwingNullLay_10(String title) {
		super(title);
		cp=this.getContentPane();
		this.setBounds(200, 100, 300, 400);
		cp.setBackground(new Color(155,155,100));
		setDesign();
		setVisible(true);
	}
	
	
	//디자인
	public void setDesign() {
		
		//기본레이아웃 없애기
		this.setLayout(null);
		
		btn1=new JButton("<");
		btn2=new JButton(">");
		
		//위치 직접 지정
		btn1.setBounds(50, 100, 80, 30);
		btn2.setBounds(150, 100, 80, 30);
		
		//frame추가
		this.add(btn1);
		this.add(btn2);
		
		//색상
		btn1.setBackground(Color.pink);
		btn1.setOpaque(true);
		btn1.setBorderPainted(false);
		btn2.setBackground(Color.gray);
		btn2.setOpaque(true);
		btn2.setBorderPainted(false);
		
		//버튼 액션
		btn1.addActionListener(this);
		btn2.addActionListener(this);
		
	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
		
		Object ob=e.getSource();
		
		if(ob==btn1)
			JOptionPane.showMessageDialog(this, "왼쪽 이동");
		else if(ob==btn2)
			JOptionPane.showMessageDialog(this, "오른쪽 이동");
	}
	
	public static void main(String[] args) {
		
		new SwingNullLay_10("레이아웃 없이 만들기");
		
	}

}
