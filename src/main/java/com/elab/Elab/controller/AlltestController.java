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
public class AlltestController {
	
	@Autowired
	iRegister ir;
	
	@Autowired
	iAlltest ia;
	
	@Autowired
	iCart ic;
	
			
//	for data fetch

	@RequestMapping("alltest")
	public ModelAndView alltest(ModelMap mp)
	{
		mp.put("obj", ia.findAll());
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("alltest.jsp");
		
		return mv;
	}
	
	
}
