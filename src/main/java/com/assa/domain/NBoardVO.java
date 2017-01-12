package com.assa.domain;

import java.util.Date;

public class NBoardVO {

	private Integer bn_index;
	private String nick;
	private String subject;
	private String content;
	private String password;
	private Date regdate;
	private String category;

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

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "NBoardVO[bn_index,nick,subject,content,password,regdate,category] = " + bn_index + "\t" + nick + "\t"
				+ subject + "\t" + content + "\t" + password + "\t" + regdate + "\t" + category;
	}

}
