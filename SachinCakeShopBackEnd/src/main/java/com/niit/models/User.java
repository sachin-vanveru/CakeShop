package com.niit.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="User")
public class User {
	@Id
	@SequenceGenerator(name="user_seq", sequenceName="user_seq" )
	@GeneratedValue(strategy=GenerationType.AUTO,generator="user_seq")
	private int uid;
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}

	@Column(name="Username")
	private String userName;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String u_name) {
		this.userName = u_name;
	}
	
	@OneToOne
	@JoinColumn(name="custId")
	private Customer cust;
	public Customer getCust() {
		return cust;
	}
	public void setCust(Customer cust) {
		this.cust = cust;
	}
	
	@Column(name="PASSWORD")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Column(name="ENABLE")
	public Boolean getEnable() {
		return enable;
	}
	public void setEnable(Boolean enable) {
		this.enable = enable;
	}
	
	private String password;
	private Boolean enable ;
}
