package com.pr.project.model;

import lombok.Data;

@Data
public class BigCategory {
    private int bcNum;			// 빅카테고리 분류 넘버
    private int bcStep;			// 빅카테고리 순서
    private String bcSubject;	// 빅카테고리 이름
}
