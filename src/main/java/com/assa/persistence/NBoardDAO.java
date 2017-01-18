package com.assa.persistence;

import java.util.List;

import com.assa.domain.Criteria;
import com.assa.domain.NBoardVO;

public interface NBoardDAO {

	/* CRUD 시작 */
	public void create(NBoardVO vo) throws Exception;

	public NBoardVO read(Integer bn_index) throws Exception;

	public void update(NBoardVO vo) throws Exception;

	public void delete(Integer bn_index) throws Exception;

	public List<NBoardVO> listAll() throws Exception;

	/* CRUD 끝 */

	/* 페이징처리 시작 */
	public List<NBoardVO> listPage(int page) throws Exception;

	public List<NBoardVO> listCriteria(Criteria cri) throws Exception;
	/* 페이징처리 끝 */

}
