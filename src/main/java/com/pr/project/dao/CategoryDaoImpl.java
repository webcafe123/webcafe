package com.pr.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pr.project.model.Board;

@Repository
public class CategoryDaoImpl implements CategoryDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public List<Board> list() {
		return sst.selectList("categoryns.list");
	}
}
