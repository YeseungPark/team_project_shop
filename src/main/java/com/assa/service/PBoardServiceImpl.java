package com.assa.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.assa.domain.PBoardVO;
import com.assa.persistence.PBoardDAO;

@Service
public class PBoardServiceImpl implements PBoardService{

	@Inject
	private PBoardDAO dao;
	
	@Override
	public void regist(PBoardVO vo){
		dao.
	}
}
