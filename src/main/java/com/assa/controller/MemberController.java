package com.assa.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@RequestMapping(value="/signUp",method=RequestMethod.GET)
<<<<<<< HEAD
	public String signUpGET(){
		
=======
	public String singUpGET(){
		logger.info("/member/signUp");
>>>>>>> 5a03cc022232fb5a60911b9cbf285d46f7e9a453
		return "/member/LoginPage";
	}
}
