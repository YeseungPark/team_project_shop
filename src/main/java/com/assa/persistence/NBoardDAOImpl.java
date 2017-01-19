package com.assa.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.assa.domain.Criteria;
import com.assa.domain.NBoardVO;

@Repository
public class NBoardDAOImpl implements NBoardDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.assa.mapper.NBoardMapper";

	@Override
	public void create(NBoardVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}

	@Override
	public NBoardVO read(Integer bn_index) throws Exception {
		return session.selectOne(namespace + ".read", bn_index);
	}

	@Override
	public void update(NBoardVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer bn_index) throws Exception {
		session.delete(namespace + ".delete", bn_index);
	}

	@Override
	public List<NBoardVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<NBoardVO> listPage(int page) throws Exception {

		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<NBoardVO> listCriteria(Criteria cri) throws Exception {

		return session.selectList(namespace+".listCriteria",cri);
	}

}
