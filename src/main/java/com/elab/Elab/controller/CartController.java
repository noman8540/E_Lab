package com.elab.Elab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.elab.Elab.Interface.iAlltest;
import com.elab.Elab.Interface.iCart;
import com.elab.Elab.Interface.iOrder;
import com.elab.Elab.Interface.iRegister;
import com.elab.Elab.Main.Alltest;
import com.elab.Elab.Main.Cart;
import com.elab.Elab.Main.Orderdetails;
import com.elab.Elab.Main.Register;

@Controller
public class CartController {

	
	@Autowired
	iRegister ir;
	
	
	@Autowired
	iAlltest ia;
	
	@Autowired
	iCart ic;
	
	@Autowired
	iOrder io;
	
	
	
	@RequestMapping("cart")
	public ModelAndView cart(ModelMap mp, String email)
	{
		Register r1 = ir.findByEmail(email);
		int id = r1.getId();
		
		mp.put("car", ic.findAllByRegister_id(id));
		mp.put("register", r1); 
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("cart.jsp");
		return mv;
	}
	
	
	//Add to cart
	@RequestMapping("addcart")
	public ModelAndView addcart(int id, String email)
	{
		Register r1 = ir.findByEmail(email);
		Alltest p1 = ia.findById(id);
			
		int i = ic.countByRegister_id(r1.getId());
	    ModelAndView mv = new ModelAndView();
	    mv.addObject("qty", i);
	    mv.setViewName("cart");
			
		if (p1 != null)
		{
			Cart c = new Cart(p1, r1);
			ic.save(c);
		}
		
		return mv;
	}
	
	
	@RequestMapping("complete")
	public String complete(String email, String pid, String pn, float total,String cid)
	{	
		String pname = "";
		Register r1 = ir.findByEmail(email);
		char[] arr = pn.toCharArray();
		for(int i=1; i<arr.length;i++)
		{
			pid = pid + arr[i];
		}
		
		Orderdetails o1=new Orderdetails(r1,total, pid, pname);
		io.save(o1);
		String[] array = cid.split(",");
	    for (String letter : array) {
	      if(letter!="")
	      {
	      int c=Integer.valueOf(letter);
	      ic.deleteById(c);
	      }
	    }
		
		return "home";
	}
	
	
	
	@RequestMapping("remove")
	public String remove(int id)
	{
		ic.deleteById(id);
		return "home";
	}
	
	
	
}
