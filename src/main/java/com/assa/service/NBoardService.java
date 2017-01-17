package com.assa.service;

import java.util.List;

import com.assa.domain.Criteria;
import com.assa.domain.NBoardVO;

public interface NBoardService {

	public void regist(NBoardVO board) throws Exception;

	public NBoardVO read(Integer bn_index) throws Exception;

	public void modify(NBoardVO board) throws Exception;

	public void remove(Integer bn_index) throws Exception;

	public List<NBoardVO> listAll() throws Exception;

	public List<NBoardVO> listCriteria(Criteria cri) throws Exception;
}
