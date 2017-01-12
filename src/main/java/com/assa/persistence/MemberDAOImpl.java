package com.assa.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.assa.domain.MemberVO;
import com.assa.dto.LoginDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;
	
	private String namespace="com.assa.mapper.MemberMapper";
	
	@Override
	public void regist(MemberVO vo){		
		session.insert(namespace+".regist", vo);		
	}
	@Override
	public MemberVO login(LoginDTO dto){
		return session.selectOne(namespace+".login",dto);
	}
	
}
