package com.assa.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpServletRequest request,HttpServletResponse response,
			HttpSession session){
		Object obj = session.getAttribute("login");
		
		if(obj != null){
			MemberVO vo=(MemberVO)obj;
			
			session.removeAttribute("login");
			session.invalidate();
		}
		return "redirect:/";
	}
	
	@RequestMapping(value="/myPage",method=RequestMethod.GET)
	public String myPageGET(){
		return "/member/myPage";
	}
	@RequestMapping(value="/updatePassCheck",method=RequestMethod.GET)
	public String updatePassCheckGET(){
		
		return "/member/updatePassCheck";
	}
	@RequestMapping(value="/update",method=RequestMethod.GET)
	public String updateGET(){
		
		return "/member/update";
	}
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updatePOST(MemberVO vo,RedirectAttributes rttr){
		service.update(vo);
		
		rttr.addFlashAttribute("updateMsg", "success");
		
		return "redirect:/member/myPage";
		
	}
	@RequestMapping(value="/deletePassCheck",method=RequestMethod.GET)
	public String deletePassCheckGET(){
		return "/member/deletePassCheck";
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String deleteGET(){
		
		return "/member/delete";
	}
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String deletePOST(@RequestParam("ID") String ID,RedirectAttributes rttr){
		
		service.delete(ID);
		
		rttr.addAttribute("delMemberMsg", "success");

		return "redirect:/member/logout";
	}
	
}
