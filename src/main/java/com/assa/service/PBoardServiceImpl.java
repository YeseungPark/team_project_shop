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
			dao.addFile(fileName);
			System.out.println("==============================================================================");
			System.out.println(fileName);
		}
	}
	@Override
	public PBoardVO read(Integer board_index){
		return dao.read(board_index);
	}
	@Override
	public void update(Map<String,Object> map){
		dao.update(map);
	}
	@Override
	public void delete(Integer board_index){
		dao.delete(board_index);
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
}
