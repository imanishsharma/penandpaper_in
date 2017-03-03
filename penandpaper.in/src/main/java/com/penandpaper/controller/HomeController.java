package com.penandpaper.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.penandpaper.service.CategoryService;


@Controller
public class HomeController {
	@Autowired
	private CategoryService categoryService;	

	
	public HomeController(){
		System.out.println("Creating instance for home controller");
		
	}
	@RequestMapping("/home")
	public String home(HttpSession session) 
	{
		session.setAttribute("categories", categoryService.getCategories());
	return "home";
	}
	@RequestMapping("/aboutus")
	public String aboutUs() 
	{
	return "aboutus";
	}
	@RequestMapping("/contactus")
	public String contactUs() 
	{
	return "contactus";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam(value="error",required=false) String error,
			@RequestParam(value="logout",required=false) String logout,
			Model model){
		if(error!=null)
			model.addAttribute("error","Invalid UserName or Password.. Please enter valid username and password");
		if(logout!=null)
			model.addAttribute("logout","Loggedout successfully..");
		return "login";
	}
}
