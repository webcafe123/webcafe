package com.pr.project.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pr.project.model.Message;
import com.pr.project.service.MessageService;

@Controller
public class MessageController {

	@Autowired
	private MessageService msgs;
	
	
}
