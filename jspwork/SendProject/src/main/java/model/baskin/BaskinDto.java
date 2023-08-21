package model.baskin;

import java.sql.Timestamp;

public class BaskinDto {
	
	private String num_baskin;
	private String kinimage1;
	private String kinimage2;
	private String kinimage3;
	private String kinimage4;
	private String mtime;
	private String spoon;
	private Timestamp odate;
	
	private String num_admin;
	private String id;
	private String pass;
	private String name;
	
	
	public String getNum_baskin() {
		return num_baskin;
	}
	public void setNum_baskin(String num_baskin) {
		this.num_baskin = num_baskin;
	}
	public String getKinimage1() {
		return kinimage1;
	}
	public void setKinimage1(String kinimage1) {
		this.kinimage1 = kinimage1;
	}
	public String getKinimage2() {
		return kinimage2;
	}
	public void setKinimage2(String kinimage2) {
		this.kinimage2 = kinimage2;
	}
	public String getKinimage3() {
		return kinimage3;
	}
	public void setKinimage3(String kinimage3) {
		this.kinimage3 = kinimage3;
	}
	public String getKinimage4() {
		return kinimage4;
	}
	public void setKinimage4(String kinimage4) {
		this.kinimage4 = kinimage4;
	}
	public String getMtime() {
		return mtime;
	}
	public void setMtime(String mtime) {
		this.mtime = mtime;
	}
	public String getSpoon() {
		return spoon;
	}
	public void setSpoon(String spoon) {
		this.spoon = spoon;
	}
	public Timestamp getOdate() {
		return odate;
	}
	public void setOdate(Timestamp odate) {
		this.odate = odate;
	}
	public String getNum_admin() {
		return num_admin;
	}
	public void setNum_admin(String num_admin) {
		this.num_admin = num_admin;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
