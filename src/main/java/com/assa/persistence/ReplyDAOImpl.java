package com.assa.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.assa.domain.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO{

	@Inject
	private SqlSession session;
	
	private String namespace = "com.assa.mapper.ReplyMapper";
	
	@Override
	public void regist(ReplyVO vo){
		session.insert(namespace+".regist", vo);
	}
	@Override
	public List<ReplyVO> replyLists(Map<String,Object> map){
		return session.selectList(namespace+".replyLists",map);
	}
	@Override
	public void update(Map<String,Object> map){
		session.update(namespace+".update", map);
	}
	@Override
	public void delete(Map<String,Object> map){
		session.delete(namespace+".delete", map);
	}
}
