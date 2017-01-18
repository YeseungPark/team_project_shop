package com.assa.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.assa.domain.ProductVO;
import com.assa.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService{

	
	@Inject
	private ProductDAO dao;
	
	@Override
	public void productInsert(ProductVO vo){
		dao.productInsert(vo);
	}

	@Override
	public List<ProductVO> productList() {
		// TODO Auto-generated method stub
		return dao.productList();
	}

	@Override
	public void productUpdate(ProductVO vo) {
		dao.productUpdate(vo);
		
	}

	@Override
	public void productDelete(Integer product_index) {
		// TODO Auto-generated method stub
		dao.productDelete(product_index);
	}
	
}
