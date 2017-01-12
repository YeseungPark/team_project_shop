package com.assa.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.assa.domain.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO{

	@Inject
	private SqlSession session;
	
	private String namespace="com.assa.mapper.productMapper";
	
	@Override
	public void productInsert(ProductVO vo) {
		session.insert(namespace+".productInsert", vo);
	}
}