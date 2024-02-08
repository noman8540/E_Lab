package com.elab.Elab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.elab.Elab.Interface.iAlltest;
import com.elab.Elab.Interface.iCart;
import com.elab.Elab.Interface.iOrder;
import com.elab.Elab.Interface.iRegister;
import com.elab.Elab.Main.Alltest;

@Controller
public class AdminController {
	
	@Autowired
	iRegister ir;
	
	@Autowired
	iAlltest ia;
	
	@Autowired
	iCart ic;
	
	@Autowired
	iOrder io;
	
	@RequestMapping("adminhome")
	public ModelAndView adminhome(ModelMap mp)
	{
		mp.put("obj", ia.findAll());
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("Admin/adminhome.jsp");
		
		return mv;
	}
	
	
	
//	for update data by admin

	@RequestMapping("update")
	public String update(int id,ModelMap mp)
	{
		Alltest p1 = ia.findById(id);
		
		
		mp.put("pro", p1);
		return "Admin/editlab.jsp";
		
	
	}
	
	
	@RequestMapping("delete")
	public String delete(@RequestParam Integer id) {
	    if (id != null) {
	        ia.deleteById(id);
	    }
	    return "adminalltest";
	}
	


	@RequestMapping("adminalltest")
	public ModelAndView adminalltest(ModelMap mp)
	{
		mp.put("obj", ia.findAll());
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("Admin/adminalltest.jsp");
		
		return mv;
	}
	
	@RequestMapping("addtest")
	public String addtest()
	{
		return "Admin/addtest.jsp";
	}
	
	
	@RequestMapping("aboutadmin")
	public String aboutadmin()
	{
		return "Admin/aboutadmin.jsp";
	}
	
	@RequestMapping("order")
	public ModelAndView order(ModelMap mp)
	{
		mp.put("orders", io.findAll());
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("Admin/order.jsp");
		
		return mv;
	}
	
	
	@RequestMapping("deleteorder")
	public String deleteorder(int id)
	{
		io.deleteById(id);
		return "order";
	}
	
//	For update the data
	@RequestMapping("editproduct")
	public String editproduct(int id, String name, String description, String imageUrl, float price)
	{
		Alltest p1 = ia.findById(id);
		
		
		p1.setId(id);
		p1.setName(name);
		p1.setDescription(description);
		p1.setImageUrl(imageUrl);
		p1.setPrice(price);
		ia.save(p1);
		
		return "adminalltest";
		
	}
	// for data to be add
	
		@RequestMapping(value = "/additems", method = RequestMethod.GET)
		public String addproduct(String name, String description, String imageUrl, float price)
		{
			Alltest p1 = new Alltest();
					
			p1.setName(name);
			p1.setDescription(description);
			p1.setImageUrl(imageUrl);
			p1.setPrice(price);
					
			ir.save(p1);
					
			return "adminalltest";	
					
		}
	
}
