package com.penandpaper.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.penandpaper.model.Cart;
import com.penandpaper.model.CartItem;
import com.penandpaper.model.Customer;
import com.penandpaper.model.Product;
import com.penandpaper.service.CartItemService;
import com.penandpaper.service.CartService;
import com.penandpaper.service.CategoryService;
import com.penandpaper.service.CustomerService;
import com.penandpaper.service.ProductService;


@Controller
public class HomeController {
	@Autowired
	private CategoryService categoryService;	

@Autowired
private ProductService productService;
@Autowired
private CartItemService cartItemService;
@Autowired
private CustomerService customerService;
@Autowired
private CartService cartService;

	


	
	public HomeController(){
		System.out.println("Creating instance for home controller");
		
	}
	@RequestMapping("/home")
	
	public String home(HttpSession session) 
	{
			int size = 0;
					
			ArrayList<CartItem> cartItems= new  ArrayList<CartItem>();
	
			    size=cartItems.size();
				session.setAttribute("count", size);
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
			Model model, HttpSession session){
	
		

		if(error!=null)
			model.addAttribute("error","Invalid UserName or Password.. Please enter valid username and password");
		if(logout!=null)
			model.addAttribute("logout","Loggedout successfully..");
		return "login";
				
		
		
		
	}
	@RequestMapping("/all/product/productdetails/{id}")
	public String productDetails(@PathVariable int id,Model model){
		Product product=productService.getProductById(id);
		model.addAttribute("product",product);
		model.addAttribute("categories",categoryService.getCategories());
		return "productdetails";
	}
	@RequestMapping("/all/product/AllProducts")
	public String getAllProducts(Model model){
		List<Product> products=productService.getAllProducts();
		//Assigning list of products to model attribute products
		model.addAttribute("productList",products);
		model.addAttribute("categories",categoryService.getCategories());
		return "products";
	}
	@RequestMapping("/all/product/productsByCategories")
	public String getProductsByCategory(@RequestParam(name="searchCondition") String searchCondition,
			Model model){
		List<Product> products=productService.getAllProducts();
			model.addAttribute("productList",products);
		model.addAttribute("searchCondition",searchCondition);
		return "products";
	}
	@RequestMapping("/all/product/home")
	public String pHome() 
	{
		return "redirect:/home";

	}
	@RequestMapping("/all/product/aboutus")
	public String pAbout() 
	{
		return "redirect:/aboutus";

	}
	@RequestMapping("/all/product/contactus")
	public String pContact() 
	{
		return "redirect:/contactus";

	}
	@RequestMapping("/all/product/login")
	public String pLogin() 
	{
		return "redirect:/login";

	}
	@RequestMapping("/admin/product/home")
	public String aHome() 
	{
		return "redirect:/home";

	}
}

