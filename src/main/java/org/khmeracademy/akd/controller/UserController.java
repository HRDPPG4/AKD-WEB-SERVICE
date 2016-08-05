package org.khmeracademy.akd.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UserController {
	
	
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String findAll(){
		return "index";
	}
	
	@RequestMapping(value="/category",method=RequestMethod.GET)
	public String categories(){
		return "user/categories";
	}
	
	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public String details(){
		return "user/details";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/view",method=RequestMethod.GET)
	public String viewslide(){
		return "user/TestViewSlide";
	}
	
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String listslide(){
		return "listSlide";
	}
}
