package com.assa.domain;

import java.sql.Timestamp;

public class ProductVO {
	
	private int product_index;
	private String product_name;
	private int product_price;
	private int product_point;
	private int product_stoke;
	private String product_size;
	private String product_color;
	private String content;
	private String category;
	private String category_detail;
	private Timestamp reg_date;
	
	public int getProduct_index() {
		return product_index;
	}
	public void setProduct_index(int product_index) {
		this.product_index = product_index;
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
	public int getProduct_point() {
		return product_point;
	}
	public void setProduct_point(int product_point) {
		this.product_point = product_point;
	}
	public int getProduct_stoke() {
		return product_stoke;
	}
	public void setProduct_stoke(int product_stoke) {
		this.product_stoke = product_stoke;
	}
	public String getProduct_size() {
		return product_size;
	}
	public void setProduct_size(String product_size) {
		this.product_size = product_size;
	}
	public String getProduct_color() {
		return product_color;
	}
	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public String getCategory_detail() {
		return category_detail;
	}
	public void setCategory_detail(String category_detail) {
		this.category_detail = category_detail;
	}
	
	
}
