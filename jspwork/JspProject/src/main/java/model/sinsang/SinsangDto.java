package model.sinsang;

import java.sql.Timestamp;

public class SinsangDto {
	//멤버(private)만 만드는곳 / setter getter로 받으면 돼서
	
	
	// sqltable과 선언한 이름은 다르게 해도 되지만 같게하면 알아보기 쉬어서 같게 함/Spring에서는 무관
	private String num;
	private String name;
	private String addr;
	//	Timestamp 무조건 sql로 security하면 에러 나옴
	private Timestamp sdate;
	
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Timestamp getSdate() {
		return sdate;
	}
	public void setSdate(Timestamp sdate) {
		this.sdate = sdate;
	}
}
