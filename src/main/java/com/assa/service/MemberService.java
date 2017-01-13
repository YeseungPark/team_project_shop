package com.assa.service;

import com.assa.domain.MemberVO;
import com.assa.dto.LoginDTO;

public interface MemberService {
	
	public void regist(MemberVO vo);
	
	public MemberVO login(LoginDTO dto);
	
	public void update(MemberVO vo);

	public void delete(String ID);
}
