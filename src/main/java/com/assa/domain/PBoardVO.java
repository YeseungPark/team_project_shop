package com.assa.domain;

import java.sql.Timestamp;

public class PBoardVO {

	private int bp_index;
	private String product_name;
	private int product_price;
	private String content;
	private Timestamp reg_date;
	private String category;
	private String category_detail;
	private String thumbnail;
	
	private String[] files;
	
	public PBoardVO(){}

	public int getBp_index() {
		return bp_index;
	}

	public void setBp_index(int bp_index) {
		this.bp_index = bp_index;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
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

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
	
}
