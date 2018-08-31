package com.dreamworth.entity;

public class User {

	public User() {

	}
	private int user_id;
	
	private String name;
	
	private String password;
	
	private String repassword;
	
	private String email;
	
	private int contact;
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
	
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", name=" + name + ", password=" + password + ", email=" + email
				+ ", contact=" + contact + "]";
	}
	
	
	

}
