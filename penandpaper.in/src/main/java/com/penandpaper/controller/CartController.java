package com.penandpaper.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.penandpaper.dao.CartDao;
import com.penandpaper.dao.CustomerDao;
import com.penandpaper.dao.CustomerOrderDao;
import com.penandpaper.model.Cart;
import com.penandpaper.model.Customer;
import com.penandpaper.model.CustomerOrder;
import com.penandpaper.model.Users;
import com.penandpaper.service.CartService;
import com.penandpaper.service.CustomerService;

@Controller
public class CartController {
 @Autowired
	private CustomerService customerService;
 @Autowired
 private CartService cartService;
 @Autowired
private	 CartDao cartDao;
 @Autowired
private	CustomerOrderDao customerOrderDao;
 @Autowired
 private	CustomerDao customerDao;
 	

	@RequestMapping("/cart/getCartId")
public String getCartId(Model model){
	User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	String username=user.getUsername();
	Customer customer=customerService.getCustomerByUsername(username);
	Cart cart=customer.getCart();
	int cartId=cart.getId();
	model.addAttribute("cartId",cartId);
	return "cart";
}
	@RequestMapping("/cart/getCart/{cartId}")
	public @ResponseBody Cart getCart(@PathVariable int cartId){
	Cart cart=cartService.getCart(cartId);
	return cart;
	
	}
	@RequestMapping("/order/{cartId}")
	public String Order(@PathVariable("cartId") int cartId) {
		CustomerOrder customerOrder = new CustomerOrder();
		Cart cart = cartDao.getCart(cartId);
		customerOrder.setCart(cart);
		Customer customer = cart.getCustomer();
		customerOrder.setCustomer(customer);
	    customerOrderDao.addCustomerOrder(customerOrder);
		return "redirect:/checkout?customerOrderId=" + customerOrder.getOrderId();
	}
	
}
