package com.assa.persistence;

import java.util.List;
import java.util.Map;

import com.assa.domain.Criteria;
import com.assa.domain.ReplyVO;

public interface ReplyDAO {

	public void regist(ReplyVO vo);
	public List<ReplyVO> replyLists(Map<String,Object> map,Criteria cri);
	public void update(Map<String,Object> map);
	public void delete(Map<String,Object> map);
	public int count(Map<String,Object> map);
	
}
