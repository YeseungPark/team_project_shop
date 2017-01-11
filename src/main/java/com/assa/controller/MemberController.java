package com.assa.controller;

@Controller
@RequestMapping("/member")
public class MemberController {

	
	
	@ReqeustMapping(value="/signUp",method=RequestMethod.GET)
	public String singUpGET(){
		return "/member/LoginPage";
	}
}
