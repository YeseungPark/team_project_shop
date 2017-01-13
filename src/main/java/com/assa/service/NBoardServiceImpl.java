package com.assa.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.assa.domain.NBoardVO;
import com.assa.persistence.NBoardDAO;

@Service
public class NBoardServiceImpl implements NBoardService {

	@Inject
	private NBoardDAO dao;

	@Override
	public void regist(NBoardVO board) throws Exception {
		dao.create(board);
	}

	@Override
	public NBoardVO read(Integer bn_index) throws Exception {
		return dao.read(bn_index);
	}

	@Override
	public void modify(NBoardVO board) throws Exception {
		dao.update(board);
	}

	@Override
	public void remove(Integer bn_index) throws Exception {
		dao.delete(bn_index);
	}

	@Override
	public List<NBoardVO> listAll() throws Exception {
		return dao.listAll();
	}

}
