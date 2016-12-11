package com.niit.models;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Table(name="Customer")
public class Customer  implements Serializable {
	
	@Id
	@SequenceGenerator(name = "cust_seq", sequenceName = "cust_seq")
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "cust_seq")
	@Column(name="CustID")
	int custId;
	
	@Column(name="Cname")
	@NotBlank
	String custName;
	@Email
	@Column(name="Email",unique=true)
	@NotBlank
	String email;
	@Column(name="Phone")
	@NotBlank
	String phone;
	@Column(name="Address")
	@NotBlank
	String address;
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
		
}