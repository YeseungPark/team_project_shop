package com.assa.persistence;

import java.util.List;

import com.assa.domain.ProductVO;

public interface ProductDAO {

	public void productInsert(ProductVO vo);
	
	public List<ProductVO> productList();

	public void productUpdate(ProductVO vo);
}