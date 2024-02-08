package com.elab.Elab.Interface;

import org.springframework.data.repository.CrudRepository;

import com.elab.Elab.Main.Alltest;
import com.elab.Elab.Main.Register;



public interface iRegister extends CrudRepository<Register, Integer>{
	
	Register findByEmail(String email);
	
	void save(Alltest p1);

	
}
