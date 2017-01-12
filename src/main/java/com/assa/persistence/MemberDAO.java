package com.assa.persistence;

import com.assa.domain.MemberVO;
import com.assa.dto.LoginDTO;


public interface MemberDAO {

	public void regist(MemberVO vo);
	
	public MemberVO login(LoginDTO dto);
	
	public void update(MemberVO vo);
	

}
