package com.assa.persistence;

import java.util.List;

import com.assa.domain.NBoardVO;

public interface NBoardDAO {

	public void create(NBoardVO vo) throws Exception;

	public NBoardVO read(Integer bno) throws Exception;

	public void update(NBoardVO vo) throws Exception;

	public void delete(Integer bno) throws Exception;

	public List<NBoardVO> listAll() throws Exception;
}
