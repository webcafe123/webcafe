package com.pr.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pr.project.model.BigCategory;
import com.pr.project.model.Board;

@Repository
public class BigCategoryDaoImpl implements BigCategoryDao {
	@Autowired // mybatis 연결
	private SqlSessionTemplate sst;

	@Override
	public List<Board> list() {
		return sst.selectList("bigCategoryns.list");
	}
	@Override
	public BigCategory select(int bcStep) {
		return sst.selectOne("bigCategoryns.select", bcStep);
	}
	@Override
	public int insertBigCate(BigCategory bigcate) {
		return sst.insert("bigCategoryns.insertBigCate", bigcate);
	}

}
