package com.test.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.domain.User;
import com.test.service.UserService;

@Controller
@RequestMapping("/home")
public class IndexController {
	
	@Autowired
	UserService userService;

	@RequestMapping("/index")
	public String toIndex() {

		return "Index";
	}

	@RequestMapping("/showUser")
	public String showUser() {

		return "Index";
	}

	@RequestMapping("/login")
	public String login(/*@ModelAttribute("username1")String username, String password*/ User user,String sex,HttpServletRequest request,ModelMap map) {
		System.out.println(request);
		System.out.println("username==" + user.getUsername());
		System.out.println("password==" + user.getPassword());
		System.out.println("sex==" + sex);
		boolean ret = userService.login(user);
		
		System.out.println("ret----------"+ret);
		//request.setAttribute("message", "aaaa");
		map.put("message", "success");
		return "Index";
	}

}
