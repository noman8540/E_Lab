package com.elab.Elab.Interface;

import org.springframework.data.repository.CrudRepository;

import com.elab.Elab.Main.Alltest;

public interface iAlltest extends CrudRepository <Alltest, Integer>{
	
	Alltest findById(int id);
}
