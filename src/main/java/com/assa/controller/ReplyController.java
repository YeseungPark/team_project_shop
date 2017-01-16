package com.assa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.assa.domain.Criteria;
import com.assa.domain.PageMaker;
import com.assa.domain.ReplyVO;
import com.assa.service.ReplyService;

@RestController
@RequestMapping("/replies")
public class ReplyController {

	@Inject
	private ReplyService service;
	
	@RequestMapping(value="/regist",method=RequestMethod.POST)
	public ResponseEntity<Map<String,String>> register(@RequestBody ReplyVO vo){
		ResponseEntity<Map<String,String>> entity = null;
		Map<String,String> map = new HashMap<>();
		try{
			service.regist(vo);
			map.put("result", "success");
			entity = new ResponseEntity<Map<String,String>>(map,HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
			map.put("result", "fail");
			entity = new ResponseEntity<Map<String,String>>(map,HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/{category}/{board_index}/{page}",method=RequestMethod.GET)
	public ResponseEntity<Map<String,Object>> list(
			@PathVariable("category") String category,
			@PathVariable("board_index") Integer board_index,
			@PathVariable("page") Integer page){
		
		ResponseEntity<Map<String,Object>> entity = null;
		try{
			Map<String,Object> map = new HashMap<>();
			map.put("category", category);
			map.put("board_index", board_index);
			
			Criteria cri = new Criteria();
			cri.setPage(page);
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			
			int replyCount = service.count(map);
			pageMaker.setTotalCount(replyCount);
			List<ReplyVO> list = service.replyLists(map, cri);
			
			map.put("list", list);
			map.put("pageMaker", pageMaker);
			
			entity = new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<Map<String,Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value = "/{reply_index}", method = { RequestMethod.PUT, RequestMethod.PATCH })
	  public ResponseEntity<Map<String,Object>> update(@PathVariable("reply_index") Integer reply_index,
			  @RequestBody ReplyVO vo) {

	    ResponseEntity<Map<String,Object>> entity = null;
	    try {
	    	Map<String,Object> map = new HashMap<>();
	    	Map<String,Object> resultMap = new HashMap<>();
	    	
	    	map.put("content", vo.getContent());
	    	map.put("reply_index", reply_index);
	    	map.put("category",vo.getCategory());
	    	service.update(map);
	    	
	    	resultMap.put("result", "success");

	    	entity = new ResponseEntity<Map<String,Object>>(resultMap, HttpStatus.OK);
	    } catch (Exception e) {
	    	e.printStackTrace();
	    	entity = new ResponseEntity<Map<String,Object>>(HttpStatus.BAD_REQUEST);
	    }
	    return entity;
	  }

	  @RequestMapping(value = "/{reply_index}", method = RequestMethod.DELETE)
	  public ResponseEntity<Map<String,Object>> remove(@PathVariable("reply_index") Integer reply_index,
			  @RequestBody String category) {

	    ResponseEntity<Map<String,Object>> entity = null;
	    try {
	    	Map<String,Object> map = new HashMap<>();
	    	Map<String,Object> resultMap = new HashMap<>();
	    	map.put("reply_index", reply_index);
	    	map.put("category", category);
	    	
	    	resultMap.put("result", "success");
	    	
	    	service.delete(map);
	    	entity = new ResponseEntity<Map<String,Object>>(resultMap, HttpStatus.OK);
	    } catch (Exception e) {
	    	e.printStackTrace();
	    	entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
	    }
	    return entity;
	  }
}
