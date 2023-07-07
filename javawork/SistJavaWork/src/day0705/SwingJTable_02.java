package day0705;

import java.awt.Color;
import java.awt.Container;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTable;

public class SwingJTable_02 extends JFrame {
	
	Container cp;
	JTable table;
	JLabel lblTitle;
	JLabel lblOut; //출력
	
	public SwingJTable_02(String title) {
		super(title);
		cp=this.getContentPane();
		this.setBounds(200, 100, 600, 500);
		cp.setBackground(new Color(255,255,200));
		setDesign();
		setVisible(true);
	}
	
	public void setDesign()
	{
		String data[][]= {{"김영준","서울","010-1234-1234"},
							{"최성현","경기","010-1111-2222"},
							{"장미란","인천","010-525-36363"},
							{"박세리","제주","010-3255-3263"}};
		String title[]= {"이름","주소","연락처"};
		
		lblTitle=new JLabel("JTable연습",JLabel.CENTER);
		lblOut=new JLabel("결과출력....",JLabel.CENTER);
		
		table=new JTable(data, title);
		JScrollPane pane=new JScrollPane(table); //생성한 테이블 넣기
		
		//테이블에 마우스 이벤트 추가하기 위해서 밑에 클래스 생성후 상속 받아서 작성
		table.addMouseListener(new TableEvent());
		
		this.add("North",lblTitle);
		this.add("Center",pane);
		this.add("South",lblOut);
		
	}
	
	//상속받기 위해서 생성
	//테이블클릭시 발생하는 마우스이벤트
	class TableEvent extends MouseAdapter{
		
		@Override
		public void mouseClicked(MouseEvent e) {
			super.mouseClicked(e);
			
			//System.out.println("테이블 클릭!!!"); 마우스 먹는지 확인용
			//선택한 행번호 얻기
			int rowNum=table.getSelectedRow();
			
			String str="이름: "+table.getValueAt(rowNum, 0)
			           +",주소: "+table.getValueAt(rowNum, 1)
			           +", 연락처: "+table.getValueAt(rowNum, 2);
			
			lblOut.setText(str); //swing화면 아래 결과값 출력
			
		}
	}

	public static void main(String[] args) {
		new SwingJTable_02("스윙 테이블 연습");
	}

}
