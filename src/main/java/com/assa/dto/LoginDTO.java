package com.assa.dto;

public class LoginDTO {
	
	private String ID;
	private String password;
	
	public LoginDTO(){}

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
}
