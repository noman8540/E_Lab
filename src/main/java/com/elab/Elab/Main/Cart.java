package com.elab.Elab.Main;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Cart {
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int id;
	
	@ManyToOne
	private Alltest alltest;
	
	@ManyToOne
	private Register register;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Alltest getAlltest() {
		return alltest;
	}

	public void setAlltest(Alltest alltest) {
		this.alltest = alltest;
	}

	public Register getRegister() {
		return register;
	}

	public void setRegister(Register register) {
		this.register = register;
	}

	public Cart(Alltest alltest, Register register) {
		super();
		this.alltest = alltest;
		this.register = register;
	}

	public Cart() {
		super();
	}

	
	
}
