package com.elab.Elab.Interface;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.elab.Elab.Main.Cart;
import com.elab.Elab.Main.Orderdetails;

public interface iOrder extends CrudRepository<Orderdetails, Integer>{
	
	int countByRegister_id(int id);
	List<Cart> findAllByRegister_id(int id);
}
