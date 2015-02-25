package com.alecchyi.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alecchyi.demo.service.UserService;

@Controller
public class PortalController {

	@Resource(name="userService")
	private UserService userService;

	@RequestMapping("index")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView("portal");
		
		mav.addObject("abc", "test");
		return mav;
	}
	
	
	@RequestMapping("demo")
	public ModelAndView portal(){
		System.out.println("do demo");
		ModelAndView view = new ModelAndView("portal");
		
		return view;
	}
	
	@RequestMapping(value="update",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> update(HttpServletRequest request){
		System.out.println("update and return null");
		String username = request.getParameter("name");
		System.out.println(username);
		System.out.println(userService);
		System.out.println(userService.userCount());
		Map<String,Object> map = new HashMap<String,Object>(1);
		map.put("username", "alec");
		
		return map;
	}
}
