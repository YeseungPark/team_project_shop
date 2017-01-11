package com.assa.domain;

import java.sql.Timestamp;

public class MemberVO {
	
	private int member_index;
	private String ID;
	private String password;
	private String nick;
	private String phone;
	private String post_code;
	private String address1;
	private String address2;
	private int point;
	private Timestamp reg_date;
	private boolean authority;
	
	public MemberVO(){}

	public int getMember_index() {
		return member_index;
	}

	public void setMember_index(int member_index) {
		this.member_index = member_index;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPost_code() {
		return post_code;
	}

	public void setPost_code(String post_code) {
		this.post_code = post_code;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public Timestamp getReg_date() {
		return reg_date;
	}

	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}

	public boolean isAuthority() {
		return authority;
	}

	public void setAuthority(boolean authority) {
		this.authority = authority;
	}
	
	
}
