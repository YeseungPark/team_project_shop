package com.assa.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.assa.domain.Criteria;
import com.assa.domain.NBoardVO;
import com.assa.domain.PageMaker;
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

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("bn_index") int bn_index, Model model) throws Exception {

		model.addAttribute(service.read(bn_index));
	}

	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(@RequestParam("bn_index") int bn_index, RedirectAttributes rttr) throws Exception {

		service.remove(bn_index);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/NBoard/listAll";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(int bn_index, Model model) throws Exception {

		model.addAttribute(service.read(bn_index));
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(NBoardVO board, RedirectAttributes rttr) throws Exception {

		logger.info("mod post............");

		service.modify(board);
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/NBoard/listAll";
	}

	@RequestMapping(value = "/listCri", method = RequestMethod.GET)
	public void listAll(Criteria cri, Model model) throws Exception {

		logger.info("show list Page with Criteria......................");

		model.addAttribute("list", service.listCriteria(cri));
	}

	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(131);

		// pageMaker.setTotalCount(service.listCountCriteria(cri));

		model.addAttribute("pageMaker", pageMaker);
	}

}
