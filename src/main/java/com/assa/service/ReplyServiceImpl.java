package com.assa.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import com.assa.domain.ReplyVO;
import com.assa.persistence.ReplyDAO;

public class ReplyServiceImpl implements ReplyService{

	@Inject
	private ReplyDAO dao;
	
	@Override
	public void regist(ReplyVO vo){
		dao.regist(vo);
	}
	@Override
	public List<ReplyVO> replyLists(Map<String,Object> map){
		return dao.replyLists(map);
	}
	@Override
	public void update(Map<String,Object> map){
		dao.update(map);
	}
	@Override
	public void delete(Map<String,Object> map){
		dao.delete(map);
	}
}
