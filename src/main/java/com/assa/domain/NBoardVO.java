package com.assa.domain;

import java.util.Date;

public class NBoardVO {

	private Integer RNUM;
	private Integer bn_index;
	private String nick;
	private String subject;
	private String content;
	private String password;
	private Date reg_date;
	private String category;
	private String name;

	public Integer getRNUM() {
		return RNUM;
	}

	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}

	public Integer getBn_index() {
		return bn_index;
	}

	public void setBn_index(Integer bn_index) {
		this.bn_index = bn_index;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "NBoardVO[bn_index,nick,subject,content,password,regdate,category] = " + bn_index + "\t" + nick + "\t"
				+ subject + "\t" + content + "\t" + password + "\t" + reg_date + "\t" + category;
	}

}
