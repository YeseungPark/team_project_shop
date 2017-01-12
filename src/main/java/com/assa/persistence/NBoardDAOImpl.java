package com.assa.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.assa.domain.NBoardVO;

@Repository
public class NBoardDAOImpl implements NBoardDAO{

	@Inject
	private SqlSession session;
	
	private String namespace="com.assa.mapper.NBoardMapper";
	
	@Override
	public void create(NBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public NBoardVO read(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(NBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<NBoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
