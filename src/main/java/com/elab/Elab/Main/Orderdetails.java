package com.elab.Elab.Main;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Orderdetails {
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int id;
	
	@ManyToOne
	private Register register;

	private float total;
	
	private String pid;
	
	private String pname;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Register getRegister() {
		return register;
	}

	public void setRegister(Register register) {
		this.register = register;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Orderdetails(Register register, float total, String pid, String pname) {
		super();
		this.register = register;
		this.total = total;
		this.pid = pid;
		this.pname = pname;
	}

	public Orderdetails() {
		super();
	}
	

}
