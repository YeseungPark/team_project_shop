package com.assa.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.assa.domain.NBoardVO;
import com.assa.service.NBoardService;

@Controller
@RequestMapping("/NBoard")
public class NBoardController {

	private static final Logger logger = LoggerFactory.getLogger(NBoardController.class);

	@Inject
	private NBoardService service;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(NBoardVO board, Model model) throws Exception {

		logger.info("register get ...........");
	}

	 @RequestMapping(value = "/register", method = RequestMethod.POST)
	  public String registPOST(NBoardVO board, RedirectAttributes rttr) throws Exception {

	    logger.info("regist post ...........");
	    logger.info(board.toString());

	    service.regist(board);

	    rttr.addFlashAttribute("msg", "SUCCESS");
	    return "redirect:/NBoard/listAll";
	  }

	  @RequestMapping(value = "/listAll", method = RequestMethod.GET)
	  public void listAll(Model model) throws Exception {

	    logger.info("show all list......................");
	    model.addAttribute("list", service.listAll());
	  }

}
