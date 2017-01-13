package com.assa.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/PBoard")
public class PBoardController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(PBoardController.class);
	
	@RequestMapping(value="/BEST", method = RequestMethod.GET)
	public String BESTGET(){
		
		logger.info("BEST 로 들어갑니다.");
		
		return "/BESTList";
	}
	
	@RequestMapping(value="/top", method = RequestMethod.GET)
	public String topGET(){
		
		logger.info("top 으로 들어갑니다.");
		
		return "/PBoard/top";
	}
	
	@RequestMapping(value="/outer", method = RequestMethod.GET)
	public String outerGET(){
		
		logger.info("outer 로 들어갑니다.");
		
		return "/PBoard/outer";
	}
}
