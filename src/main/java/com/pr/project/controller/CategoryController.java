package com.pr.project.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.pr.project.model.Board;
import com.pr.project.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService cs;
	
	@RequestMapping("/category/list")
	public String list(Model model) {
		List<Board> list = cs.list();
		model.addAttribute("list", list);
		return "/category/list";
	}
}
