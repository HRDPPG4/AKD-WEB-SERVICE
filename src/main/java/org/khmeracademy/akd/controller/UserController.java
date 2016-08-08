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
	
	@RequestMapping(value="/technology",method=RequestMethod.GET)
	public String technology(){
		return "user/technology";
	}
	
	@RequestMapping(value="/userview",method=RequestMethod.GET)
	public String user_view(){
		return "user/user_view";
	}
	
	@RequestMapping(value="/user_upload",method=RequestMethod.GET)
	public String user_person(){
		return "user/user_personal/user_upload";
	}
	@RequestMapping(value="/user_information",method=RequestMethod.GET)
	public String user_information(){
		return "user/user_information";
	}
	
	@RequestMapping(value="/general-knowledge",method=RequestMethod.GET)
	public String generalKnowledge(){
		return "user/general_knowledge";
	}
	
	@RequestMapping(value="/literal",method=RequestMethod.GET)
	public String literal(){
		return "user/literal";
	}
	
	@RequestMapping(value="/business",method=RequestMethod.GET)
	public String business(){
		return "user/business";
	}
	
	@RequestMapping(value="/other",method=RequestMethod.GET)
	public String other(){
		return "user/other";
	}
	
	
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		return "user/login";
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
