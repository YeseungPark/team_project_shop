package com.assa.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.assa.domain.Criteria;
import com.assa.domain.PBoardVO;
import com.assa.domain.PageMaker;
import com.assa.domain.ProductVO;
import com.assa.service.PBoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/pboard")
public class PBoardController {
	
	@Inject
	private PBoardService service;
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	private static final Logger logger = 
			LoggerFactory.getLogger(PBoardController.class);	
	
	@RequestMapping(value="/write",method=RequestMethod.GET)
	public String writeGET(){
		return "/pboard/write";
	}
	
	//pboard/write에서 select 태그에서 상품 목록 출력용
	@RequestMapping(value="/getProduct/{category_detail}",method=RequestMethod.GET)
	public @ResponseBody ResponseEntity<List<ProductVO>> getProductGET(@PathVariable("category_detail") String category_detail){
		ResponseEntity<List<ProductVO>> entity = null;
		Map<String,Object> map = new HashMap<>();

		try{
			map.put("category_detail", category_detail);
			List<ProductVO> lists = service.listAll(map);
			
			entity = new ResponseEntity<List<ProductVO>>(lists,HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<List<ProductVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="write",method=RequestMethod.POST)
	public String writePOST(MultipartFile file,PBoardVO vo,RedirectAttributes rttr) throws Exception{		
		String savedName = uploadFile(file.getOriginalFilename(),file.getBytes());
		vo.setThumbnail(savedName);
		
		service.create(vo);
		rttr.addFlashAttribute("pboardWriteResult","success");
		
		return "redirect:/pboard/write";
	}
	
	private String uploadFile(String originalName, byte[] fileData) throws Exception{
	
	 UUID uid = UUID.randomUUID();
	
	 String savedName = uid.toString() + "_"+ originalName;
	
	 File target = new File(uploadPath,savedName);
	
	 FileCopyUtils.copy(fileData, target);
	
	 return savedName;
	
	 }
	
	//뷰페이지 리스트 뿌리기
	
	@RequestMapping(value="/top",method=RequestMethod.GET)
	public String topGET(@ModelAttribute("cri") Criteria cri,Model model){
		Map<String,Object> map = new HashMap<>();
		map.put("category", "top");
		map.put("category_detail","tee");
		map.put("cri", cri);
		
		model.addAttribute("list", service.listCriteria(map));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.countPaging("tee"));
		
		System.out.println("=======================================================================");
		System.out.println(service.countPaging("tee"));
		model.addAttribute("pageMaker",pageMaker);
		
		return "/pboard/top";
	}
	
	//뷰페이지 리스트 끝
}
