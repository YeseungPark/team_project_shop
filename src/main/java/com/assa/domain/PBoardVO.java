package com.assa.domain;

import java.sql.Timestamp;

public class PBoardVO {

	private int bp_index;
	private String subject;
	private String content;
	private Timestamp reg_date;
	private String category;
	private String category_detail;
	
	private String[] files;
	
	public PBoardVO(){}

	public int getBp_index() {
		return bp_index;
	}

	public void setBp_index(int bp_index) {
		this.bp_index = bp_index;
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

	public Timestamp getReg_date() {
		return reg_date;
	}

	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCategory_detail() {
		return category_detail;
	}

	public void setCategory_detail(String category_detail) {
		this.category_detail = category_detail;
	}

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}
	
	
}
