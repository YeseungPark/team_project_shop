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
	
	@RequestMapping(value="/{category}/{board_index}",method=RequestMethod.GET)
	public ResponseEntity<List<ReplyVO>> list(
			@PathVariable("category") String category,
			@PathVariable("board_index") Integer board_index){
		
		ResponseEntity<List<ReplyVO>> entity = null;
		try{
			Map<String,Object> map = new HashMap<>();
			map.put("category", category);
			map.put("board_index", board_index);
			
			entity = new ResponseEntity<List<ReplyVO>>(service.replyLists(map),HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<List<ReplyVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
