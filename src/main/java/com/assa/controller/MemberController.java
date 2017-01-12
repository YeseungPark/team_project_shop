package com.assa.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.assa.domain.MemberVO;
import com.assa.dto.LoginDTO;
import com.assa.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	private MemberService service;
	
	@RequestMapping(value="/signUp",method=RequestMethod.GET)
	public String signUpGET(){
		logger.info("================================================");
		return "/member/regist";
	}
	
	@RequestMapping(value="/regist",method=RequestMethod.POST)
	public String registPOST(MemberVO vo,RedirectAttributes rttr){
		service.regist(vo);
				
		rttr.addFlashAttribute("registMsg", "success");
		
		return "redirect:/";
		
	}
	@RequestMapping(value="/loginPost",method=RequestMethod.POST)
	public void loginPOST(LoginDTO dto,HttpSession session,Model model){
		
		MemberVO vo=service.login(dto);
		
		if(vo==null){
			return;
		}
		model.addAttribute("memberVO",vo);
	
	}
	
	
}
