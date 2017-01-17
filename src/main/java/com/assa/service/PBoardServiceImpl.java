package com.assa.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.assa.domain.PBoardVO;
import com.assa.domain.ProductVO;
import com.assa.persistence.PBoardDAO;

@Service
public class PBoardServiceImpl implements PBoardService{

	@Inject
	private PBoardDAO dao;
	
	public void addFile(String file_name){
		dao.addFile(file_name);
	}
	public void create(PBoardVO vo){
		dao.create(vo);
	}
	public PBoardVO read(Integer board_index){
		return dao.read(board_index);
	}
	public void update(Map<String,Object> map){
		dao.update(map);
	}
	public void delete(Integer board_index){
		dao.delete(board_index);
	}
	public List<ProductVO> listAll(Map<String,Object> map){
		return dao.listAll(map);
	}
	public List<PBoardVO> listCriteria(Map<String,Object> map){
		return dao.listCriteria(map);
	}
	public int countPaging(String category){
		return dao.countPaging(category);
	}
}
