package com.niit.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity 
@Table(name="Category")
public class Category implements Serializable
    {
	 @Id
	 @GeneratedValue(strategy=GenerationType.AUTO)
	 private int cid;
	 @Column(name="Name")
	 private String cname;
	 @Column(name="description")
	 private String cdesc;
	
public Category()
    {
	}

public Category(int cid,String cname, String cdesc) {
this.cid=cid;
this.cname=cname;
this.cdesc=cdesc;
}

  public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
  public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getCdesc() {
	return cdesc;
}
public void setCdesc(String cdesc) {
	this.cdesc = cdesc;
}
}
