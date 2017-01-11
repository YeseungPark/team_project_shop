package com.assa.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.assa.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;
	
	private String namespace="com.assa.mapper.MemberVO";
	
	
	public void regist(MemberVO vo){		
		session.insert(namespace+".regist", vo);		
	}
	
}
