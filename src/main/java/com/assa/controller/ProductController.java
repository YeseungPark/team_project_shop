package com.assa.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

		return "redirect:/product/productList";
	}

	@RequestMapping(value = "/productList", method = RequestMethod.GET)
	public void productList(Model model) {
		
		List<ProductVO> list = service.productList();
		
		model.addAttribute("productList",list);
		
		logger.info("LIST 뿌려쭸다..");
		
	}
	
	@RequestMapping(value = "/ProductUpdatePage", method = RequestMethod.GET)
	public void ProductUpdatePage(Model model) {
		
		List<ProductVO> list = service.productList();
		
		model.addAttribute("productList",list);
		
		logger.info("update로 들어왔다 ");
		
	}
	
	@RequestMapping(value = "/ProductUpdate", method = RequestMethod.GET)
	
	public String ProductUpdateGET(ProductVO vo, RedirectAttributes rttr) {
		
		service.productUpdate(vo);

		rttr.addFlashAttribute("UpdateMsg", "success");

		return "redirect:/product/ProductUpdatePage";
	}
	
	@RequestMapping(value = "/deletePage", method = RequestMethod.GET)
	public String deletePageGET(@RequestParam("product_index") Integer product_index,Model model) {

		model.addAttribute("index",product_index);
		
		logger.info("product delete page 들어갑니다..");

		return "/product/deletePassCheck";
	}
	
	 @RequestMapping(value = "/delete", method = RequestMethod.POST)
	  public String delete(@RequestParam("product_index") int product_index, RedirectAttributes rttr) {

	    service.productDelete(product_index);

	    rttr.addFlashAttribute("delete", "SUCCESS");

	    return "redirect:/product/ProductUpdatePage";
	  }

}
