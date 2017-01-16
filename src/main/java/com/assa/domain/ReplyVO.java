package com.assa.domain;

import java.sql.Timestamp;

public class ReplyVO {
	
	private int reply_index;
	private int board_index;
	private String nick;
	private String content;
	private String category;
	private Timestamp reg_date;
	
	public ReplyVO(){}

	public int getReply_index() {
		return reply_index;
	}

	public void setReply_index(int reply_index) {
		this.reply_index = reply_index;
	}
	
	public int getBoard_index() {
		return board_index;
	}

	public void setBoard_index(int board_index) {
		this.board_index = board_index;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
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
	
	
}
