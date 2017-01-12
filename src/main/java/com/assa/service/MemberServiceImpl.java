package com.assa.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.assa.domain.MemberVO;
import com.assa.dto.LoginDTO;
import com.assa.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{

	
	@Inject
	private MemberDAO dao;
	
	@Override
	public void regist(MemberVO vo){
		dao.regist(vo);
	}
	@Override
	public MemberVO login(LoginDTO dto){
		return dao.login(dto);
		
	}
	@Override
	public void update(MemberVO vo){
		dao.update(vo);
	}
}
