package com.assa.persistence;

import java.util.List;

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

	@Override
	public List<ProductVO> productList() {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".productList");
	}

	@Override
	public void productUpdate(ProductVO vo) {
		session.update(namespace+".productUpdate", vo);		
	}

	@Override
	public void productDelete(Integer product_index) {
		// TODO Auto-generated method stub
		session.delete(namespace+".productDelete", product_index);	
	}


}