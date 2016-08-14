package com.alecchyi.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.aspectj.weaver.ast.Var;
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
	
	@RequestMapping("home")
	public ModelAndView home(){
		ModelAndView view = new ModelAndView("share/layout");
		view.addObject("content_page", "/WEB-INF/page/home/home.jsp");
		view.addObject("page_title", "首页");
		view.addObject("layout", "main");
		List menus = new ArrayList();
		for(int i=0;i<4;i++){
			Map map = new HashMap<>();
			map.put("name", "Name"+i);
			map.put("id", i);
			menus.add(map);
		}
		
		view.addObject("menus", menus);
		return view;
	}
	
	
	@RequestMapping("user")
	public ModelAndView user(){
		ModelAndView view = new ModelAndView("share/layout");
		view.addObject("content_page", "/WEB-INF/page/user/user_center.jsp");
		view.addObject("page_title", "个人中心");
		view.addObject("layout", "main");
		return view;
	}
	
	@RequestMapping("collection")
	public ModelAndView collection(){
		ModelAndView view = new ModelAndView("share/layout");
		view.addObject("content_page", "/WEB-INF/page/user/collection.jsp");
		view.addObject("page_title", "我的收藏");
		return view;
	}
	
	@RequestMapping("messages")
	public ModelAndView messages(){
		ModelAndView view = new ModelAndView("share/layout");
		view.addObject("content_page", "/WEB-INF/page/user/messages.jsp");
		view.addObject("page_title", "我的消息");
		view.addObject("layout", "main");
		return view;
	}
	
	@RequestMapping("cart")
	public ModelAndView cart(){
		ModelAndView view = new ModelAndView("share/layout");
		view.addObject("content_page", "/WEB-INF/page/user/cart.jsp");
		view.addObject("page_title", "我的购物车");
		view.addObject("layout", "main");
		return view;
	}
	
	@RequestMapping("user_info")
	public ModelAndView userInfo(){
		ModelAndView view = new ModelAndView("share/layout");
		view.addObject("content_page", "/WEB-INF/page/user/user_info.jsp");
		view.addObject("page_title", "我的信息");
		view.addObject("layout", "main");
		return view;
	}
	
	@RequestMapping("addresses")
	public ModelAndView addresses(){
		ModelAndView view = new ModelAndView("share/layout");
		view.addObject("content_page", "/WEB-INF/page/user/addresses.jsp");
		view.addObject("page_title", "我的地址");
		view.addObject("layout", "main");
		return view;
	}
	
	@RequestMapping("order")
	public ModelAndView order(){
		ModelAndView view = new ModelAndView("share/layout");
		view.addObject("content_page", "/WEB-INF/page/order/order.jsp");
		view.addObject("page_title", "订单");
		view.addObject("layout", "main");
		return view;
	}
	
	@RequestMapping("search")
	public ModelAndView search(){
		ModelAndView view = new ModelAndView("share/layout");
		view.addObject("content_page", "/WEB-INF/page/search/result.jsp");
		view.addObject("page_title", "商品搜索");
		view.addObject("layout", "main");
		return view;
	}
	
	@RequestMapping("p_detail")
	public ModelAndView pDetail(){
		ModelAndView view = new ModelAndView("share/layout");
		view.addObject("content_page", "/WEB-INF/page/product/p_detail.jsp");
		view.addObject("page_title", "商品信息");
		view.addObject("layout", "main");
		return view;
	}
	
	@RequestMapping("login")
	public ModelAndView login(){
		ModelAndView view = new ModelAndView("share/layout");
		view.addObject("content_page", "/WEB-INF/page/login/login.jsp");
		view.addObject("page_title", "登录");
		view.addObject("layout", "login");
		return view;
	}
	
	@RequestMapping("register")
	public ModelAndView register(){
		ModelAndView view = new ModelAndView("share/layout");
		view.addObject("content_page", "/WEB-INF/page/login/register.jsp");
		view.addObject("page_title", "注册");
		view.addObject("layout", "login");
		return view;
	}
	
	@RequestMapping(value="update",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> update(HttpServletRequest request){
		System.out.println("update and return null");
		String username = request.getParameter("name");
		System.out.println(username);
		System.out.println(userService);
//		System.out.println(userService.userCount());
		Map<String,Object> map = new HashMap<String,Object>(1);
		map.put("username", "alec");
		
		return map;
	}
}
