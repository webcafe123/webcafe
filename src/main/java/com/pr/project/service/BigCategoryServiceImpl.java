package com.pr.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pr.project.dao.BigCategoryDao;
import com.pr.project.model.BigCategory;
import com.pr.project.model.Board;

@Service
public class BigCategoryServiceImpl implements BigCategoryService {
	@Autowired
	private BigCategoryDao bcd;

	@Override
	public List<Board> list() {
		return bcd.list();
	}
	@Override
	public BigCategory select(int bcStep) {
		return bcd.select(bcStep);
	}
	@Override
	public int insertBigCate(BigCategory bigcate) {
		return bcd.insertBigCate(bigcate);
	}


}
