package com.assa.persistence;

import java.util.List;

import com.assa.domain.NBoardVO;

public interface NBoardDAO {

	public void create(NBoardVO vo) throws Exception;

	public NBoardVO read(Integer bn_index) throws Exception;

	public void update(NBoardVO vo) throws Exception;

	public void delete(Integer bn_index) throws Exception;

	public List<NBoardVO> listAll() throws Exception;
}
