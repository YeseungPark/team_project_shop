package com.assa.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.assa.domain.PBoardVO;
import com.assa.domain.ProductVO;

@Repository
public class PBoardDAOImpl implements PBoardDAO{
	
	@Inject
	private SqlSession session;
	
	private String namespace = "com.assa.mapper.PBoardMapper";
	
	@Override
	public void addFile(String fullName){
		session.insert(namespace+".addFile", fullName);
	}
	@Override
	public void create(PBoardVO vo){
		session.insert(namespace+".create",vo);
	}
	@Override
	public PBoardVO read(Integer board_index){
		return session.selectOne(namespace+".read",board_index);
	}
	@Override
	public void update(Map<String,Object> map){
		session.update(namespace+".update",map);
	}
	@Override
	public void delete(Integer board_index){
		session.delete(namespace+".delete",board_index);
	}
	@Override
	public List<ProductVO> listAll(Map<String,Object> map){
		return session.selectList(namespace+".listAll", map);
	}
	@Override
	public List<PBoardVO> listCriteria(Map<String,Object> map){
		return session.selectList(namespace+".listCriteria",map);
	}
	@Override
	public int countPaging(String category){
		return session.selectOne(namespace + ".countPaging", category);
	}
}
