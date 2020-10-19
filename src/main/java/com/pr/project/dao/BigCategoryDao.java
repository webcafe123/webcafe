package com.pr.project.dao;

import java.util.List;

import com.pr.project.model.BigCategory;
import com.pr.project.model.Board;

public interface BigCategoryDao {
	List<Board> list();
	BigCategory select(int bcStep);
	int insertBigCate(BigCategory bigcate);




}
