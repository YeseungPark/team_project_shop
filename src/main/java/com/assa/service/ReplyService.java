package com.assa.service;

import java.util.List;
import java.util.Map;

import com.assa.domain.ReplyVO;

public interface ReplyService {

	public void regist(ReplyVO vo);
	public List<ReplyVO> replyLists(Map<String,Object> map);
	public void update(Map<String,Object> map);
	public void delete(Map<String,Object> map);
}
