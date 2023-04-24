package main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class MainDAOMyBatis implements MainDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Map<String, Object>> getBestProductList() throws Exception {
		return sqlSession.selectList("mainSQL.getBestProductList");
	}

}
