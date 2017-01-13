package com.assa.service;

import java.util.List;

import com.assa.domain.ProductVO;

public interface ProductService {

	public void productInsert(ProductVO vo);
	
	public List<ProductVO> productList();
	
}