package com.assa.persistence;

import java.util.List;
import java.util.Map;

import com.assa.domain.PBoardVO;
import com.assa.domain.ProductVO;

public interface PBoardDAO {

	public void addFile(String fullName);
	public List<String> getFile(Integer bp_index);
	public void create(PBoardVO vo);
	public PBoardVO read(Integer bp_index);
	public void update(Map<String,Object> map);
	public void delete(Integer bp_index);
	public List<ProductVO> listAll(Map<String,Object> map);
	public List<PBoardVO> listCriteria(Map<String,Object> map);
	public int countPaging(String category);
	public List<ProductVO> getProduct(String product_name);
}
