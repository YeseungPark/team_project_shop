package com.assa.controller;

@Controller
@RequestMapping("/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value="/signUp",method=RequestMethod.GET)
	public String singUpGET(){
		
		return "/member/LoginPage";
	}
}
