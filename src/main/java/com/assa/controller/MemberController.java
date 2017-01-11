package com.assa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
<<<<<<< HEAD
	
=======
>>>>>>> 433f7b83fb5ff992dd86b98c44647524d1349382
	@RequestMapping(value="/signUp",method=RequestMethod.GET)
	public String singUpGET(){
		
		return "/member/LoginPage";
	}
}
