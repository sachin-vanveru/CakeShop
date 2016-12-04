package com.niit.models;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="Products")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})

public class Product implements Serializable {
	
	@Id
	@SequenceGenerator(name = "prod_seq", sequenceName = "prod_seq")
	@GeneratedValue(strategy=GenerationType.AUTO,generator = "prod_seq")
	
	@Column(name="PID")
	private int pid;
	@NotNull
	@Size(min=3,max=40)
	
	@Column(name="PNAME")
	private String name;
	@Min(1)
	
	@Column(name="PRICE")
	private double price;
	@Min(1)
	
	@Column(name="Quantity")
	private int qty;
	
	@OneToOne
	@JoinColumn(name="cid")
	private Category category;
	
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	@Column(name="ImagePath")
	private String image;
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@NotBlank
	
	@Column(name="Description")
	private String desc;
	@NotNull
	@Transient
	private MultipartFile file;
    
	
	public void setPid(int id)
	{
		this.pid= id;
	}
	public int getPid()
	{
		return pid;
	}
	
    public MultipartFile getFile() {
        return file;
    }
 
    public void setFile(MultipartFile file) {
        this.file = file;
    }
	private String pname;	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	

     public Product()
     {
    	 
     }
	public Product(int pid, String pname,double price,int qty,String desc,String i_name)
	{
		this.pid=pid;
		this.pname=pname;
		this.price=price;
		this.qty=qty;
		this.desc=desc;
		
	}
}
