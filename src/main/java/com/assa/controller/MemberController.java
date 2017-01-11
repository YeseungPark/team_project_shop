package com.assa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member")
public class MemberController {

	
	
	@RequestMapping(value="/signUp",method=RequestMethod.GET)
	public String singUpGET(){
		return "/member/LoginPage";
	}
}
