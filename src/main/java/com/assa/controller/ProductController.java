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
@RequestMapping("/product")
public class ProductController {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(ProductController.class);
	
	@RequestMapping(value="/insert", method = RequestMethod.GET)
	public String insertGET(){
		
		logger.info("product insert page 값을 받아왔습니다.");
		
		return "/product/product";
	}
	
	@RequestMapping(value="/insert", method = RequestMethod.POST)
	public String insertPOST(){
		
		logger.info("product insert ------ 값을 보네 버렸다");
		
		return "/product/productList";
	}
	
}
