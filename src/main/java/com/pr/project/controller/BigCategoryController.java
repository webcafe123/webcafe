package com.pr.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pr.project.model.BigCategory;
import com.pr.project.model.Board;
import com.pr.project.service.BigCategoryService;
import com.pr.project.service.BoardService;

@Controller
public class BigCategoryController {
	@Autowired
	private BigCategoryService bcs;
	
	@RequestMapping("/bigcategory/list")
	public String list(Model model) {
		List<Board> list = bcs.list();
		model.addAttribute("list", list);
		return "/bigcategory/list";		//bigcategory 폴더 내에 list 들어있다.
	}
	
	@RequestMapping("/bigcategory/insertBigCateForm")
	public String insertBigCateForm() {
		return "/bigcategory/insertBigCateForm";
	}	
	@RequestMapping(value="/bigcategory/bcStepChk",produces="text/html;charset=utf-8" )
	@ResponseBody
	public String bcStepChk(int bcStep) {
		String msg = "";
		BigCategory bigCate = bcs.select(bcStep);
		if (bigCate == null) msg = "순서 체크 ok";
		else msg="순서 번호 확인 필요";
		return msg;
	}
	/*
	 * @RequestMapping(value = "/bigcategory/insertBigCate", method =
	 * RequestMethod.POST) public String insertBigCate(
	 * 
	 * @RequestParam("bcStep") String bcStep, @RequestParam("bcSubject") String
	 * bcSubject, Model model) { BigCategory bigCate = new BigCategory();
	 * bigCate.setBcStep(Integer.parseInt(bcStep)); bigCate.setBcSubject(bcSubject);
	 * 
	 * int result = bcs.insertBigCate(bigCate);
	 * 
	 * model.addAttribute("result", result); return "/bigcategory/insertBigCate";
	 * 
	 * }
	 */
	@RequestMapping(value = "/bigcategory/insertBigCate", method = RequestMethod.POST)
	public String insertBigCate( BigCategory bigCate, Model model) {
//		System.out.println(bcStep);
//		System.out.println(bcSubject);

		int result = bcs.insertBigCate(bigCate); 
		model.addAttribute("result", result);
		return "/bigcategory/insertBigCate"; 

	}
	
}
//private int bcNum;			// 빅카테고리 분류 넘버
//private int bcStep;			// 빅카테고리 순서
//private String bcSubject;	// 빅카테고리 이름
