package com.assa.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PBoardDAOImpl implements PBoardDAO{
	
	@Inject
	private SqlSession session;
	
	private String namespace = "com.assa.mapper.PBoardMapper";
	
	@Override
	public void addFile(String file_name){
		session.insert(namespace+".addFile", file_name);
	}
}
