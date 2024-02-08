package com.elab.Elab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.elab.Elab.Interface.iAlltest;
import com.elab.Elab.Interface.iCart;
import com.elab.Elab.Interface.iRegister;

@Controller
public class SinglepageController {
	
	@Autowired
	iRegister ir;
	
	@Autowired
	iAlltest ia;
	
	@Autowired
	iCart ic;
	
	
//	For single page
	@RequestMapping("singlepage")
	public ModelAndView singlepage(ModelMap mo, int id)
	{
		mo.put("prod1", ia.findById(id));
		ModelAndView mv = new ModelAndView();
		mv.addObject(mo);
		mv.setViewName("singlepage.jsp");
		return mv;
	}
	
	
	
}
