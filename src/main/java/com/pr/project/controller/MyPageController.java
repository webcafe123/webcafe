package com.pr.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.pr.project.model.User;
import com.pr.project.service.MyPageService;
import com.pr.project.service.UserService;

@Controller
public class MyPageController {

	@Autowired private UserService us;
	 
	@Autowired
	private MyPageService mps;
	
	
	@RequestMapping("home_yj")
	public String home_yj( String user_id, String user_nickname, String user_regdate, Model model) {
		
		user_id = "pyj078";
		user_nickname="유댕ㅎㅎ";
		user_regdate = "2020.10.16."; //Date 로 바꿔줘야함 (위에도)
		
		model.addAttribute("user_id", user_id);
		model.addAttribute("user_nickname", user_nickname);
		model.addAttribute("user_regdate",user_regdate);
		
		return "home_yj";
	}
	
	@RequestMapping("myPageTab/memberLevelInfo")
	public String memberLevelInfo(String user_id, String user_nickname, String user_regdate, Model model) {
		
		user_id = "pyj078";
		user_nickname="유댕ㅎㅎ";
		user_regdate = "2020.10.16."; //Date 로 바꿔줘야함 (위에도)
		
		model.addAttribute("user_id", user_id);
		model.addAttribute("user_nickname", user_nickname);
		model.addAttribute("user_regdate",user_regdate);
		
		
		return "myPageTab/memberLevelInfo";
	}
	
	@RequestMapping("myPageTab/sendmessagePopup")
	public String sendmessagePopup(String user_id, Model model) {
		
		user_id = "pyj078";
		
		model.addAttribute("user_id", user_id);
		
		return "myPageTab/sendmessagePopup";
	}
	
	@RequestMapping("myPageTab/userInfoUpdateForm")
	public String userInfoUpdateForm(String user_nickname, Model model) {
		
		//User user = us.selectN(user_nickname);
		//model.addAttribute("user", user);
		
		user_nickname="유댕ㅎㅎ";
		model.addAttribute("user_nickname", user_nickname);
		
		
		return "myPageTab/userInfoUpdateForm";
	}
	
	@RequestMapping(value="/myPageTab/nickNoChk", 
			produces="text/html;charset=utf-8")
	@ResponseBody
	public String nickNoChk(String user_nickname) {
		String msg = "";
		User user = us.selectN(user_nickname);
		if (user == null) msg="사용 가능";
		else if (user.getUser_nickname().equals(user_nickname)) msg = "사용 중이니 다른 닉네임을 사용하시오";
		//else msg="사용 가능";
		return msg;
	}
	
	@RequestMapping("myPageTab/myMsgs")
	public String myMsgs() {
		
		return "myPageTab/myMsgs";
	}
	
	
}
