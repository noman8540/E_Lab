package com.elab.Elab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.elab.Elab.Interface.iAlltest;
import com.elab.Elab.Interface.iCart;
import com.elab.Elab.Interface.iRegister;
import com.elab.Elab.Main.Register;

import jakarta.servlet.http.HttpSession;



@Controller
public class LoginController {
	
	@Autowired
	iRegister ir;
	
	@Autowired
	iAlltest ia;
	
	@Autowired
	iCart ic;

	@RequestMapping("login")
	public String login()
	{
		return "login.jsp";
	}
	
	
	// For signup

		@RequestMapping("registeration")
		public String register(String name, String email, String password)
		{
			Register r1 = new Register();
			
			
			r1.setName(name);
			r1.setEmail(email);
			r1.setPassword(password);
			ir.save(r1);
			return "redirect:/login";	
			
		}
	
	
		//for login
		
		@RequestMapping(value = "log", method = RequestMethod.POST)
	    public ModelAndView login(HttpSession session, String email, String password) 
		{
			
	        Register user = ir.findByEmail(email);
	        if (user != null && user.getPassword().equals(password)) {
	        	
	        	int i = ic.countByRegister_id(user.getId());
	        	ModelAndView mv = new ModelAndView();
	        	mv.addObject("qty", i);
	        	mv.setViewName("home");
	        	session.setAttribute("eid", email);
	        	return mv;
	             
	        } else {
	        	
	        	if(email.equals("admin@gmail.com"))
	        	{
	        		session.setAttribute("eid", email);
	        		ModelAndView mv = new ModelAndView();
	                mv.setViewName("adminhome");
	                return mv;
	        	}
	        	
	        	else
	        	{
	            
	            ModelAndView mv = new ModelAndView();
	            mv.setViewName("login.jsp");
	            return mv;
	        
	        	}
	        }
	    }
		
		//for logout
		
		@RequestMapping("logout")
		public String logout()
		{
			return "logout.jsp";
		}
	
}
