package com.assa.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.assa.domain.ProductVO;
import com.assa.service.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/product")
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Inject
	private ProductService service;

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insertGET() {

		logger.info("product insert page 들어갑니다..");

		return "/product/product";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertPOST(ProductVO vo, RedirectAttributes rttr) {

		service.productInsert(vo);

		rttr.addFlashAttribute("insertMsg", "success");

		return "/product/productList";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listGET() {

		logger.info("list로 받았네요.");

		return "/product/productList";
	}

}
