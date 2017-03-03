package com.penandpaper.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.penandpaper.model.Customer;
import com.penandpaper.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;	
		
@RequestMapping("/register")
public String getRegistrationForm(Model model){
	model.addAttribute("customer",new Customer());
	return "register";
}
@RequestMapping("/all/registerCustomer")
public String registerCustomer(@ModelAttribute(value="customer") Customer customer){
	customerService.saveCustomer(customer);
	return "home";
}
}