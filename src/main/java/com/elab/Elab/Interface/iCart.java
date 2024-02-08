package com.elab.Elab.Interface;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

import com.elab.Elab.Main.Cart;


public interface iCart extends CrudRepository<Cart, Integer>{

	
	int countByRegister_id(int id);

    List<Cart> findAllByRegister_id(int id);
    void deleteByAlltest_Id(int AlltestId);
}
