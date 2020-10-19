package com.pr.project.service;

import java.util.List;

import com.pr.project.model.BigCategory;
import com.pr.project.model.Board;

public interface BigCategoryService {
	List<Board> list();
	BigCategory select(int bcStep);
	int insertBigCate(BigCategory bigcate);



}
