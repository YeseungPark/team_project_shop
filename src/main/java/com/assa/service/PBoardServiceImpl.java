package com.assa.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.assa.domain.PBoardVO;
import com.assa.domain.ProductVO;
import com.assa.persistence.PBoardDAO;

@Service
public class PBoardServiceImpl implements PBoardService{

	@Inject
	private PBoardDAO dao;
	
	@Transactional
	@Override
	public void create(PBoardVO vo){
		dao.create(vo);
		
		String[] files = vo.getFiles();
		
		if(files == null) return;
		
		for(String fileName:files){
			fileName = fileName.replaceFirst("s_","");
			dao.addFile(fileName);
			System.out.println("==============================================================================");
			System.out.println(fileName);
		}
	}
	@Override
	public PBoardVO read(Integer bp_index){
		return dao.read(bp_index);
	}
	@Override
	public void update(Map<String,Object> map){
		dao.update(map);
	}
	@Override
	public void delete(Integer bp_index){
		dao.delete(bp_index);
	}
	@Override
	public List<ProductVO> listAll(Map<String,Object> map){
		return dao.listAll(map);
	}
	@Override
	public List<PBoardVO> listCriteria(Map<String,Object> map){
		return dao.listCriteria(map);
	}
	@Override
	public int countPaging(String category){
		return dao.countPaging(category);
	}
	@Override
	public List<String> getFile(Integer bp_index){
		return dao.getFile(bp_index);
	}
	@Override
	public List<ProductVO> getProduct(String product_name){
		return dao.getProduct(product_name);
	}
	@Override
	public Integer getProductStock(ProductVO vo){
		return dao.getProductStock(vo);
	}
}
