package com.penandpaper.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.penandpaper.model.Cart;
import com.penandpaper.model.CartItem;
import com.penandpaper.model.Customer;
import com.penandpaper.model.Product;
import com.penandpaper.service.CartItemService;
import com.penandpaper.service.CartService;
import com.penandpaper.service.CustomerService;
import com.penandpaper.service.ProductService;

@Controller
public class CartItemController {
	@Autowired
	private CartItemService cartItemService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CartService cartService;

@RequestMapping("/cart/addCartItem/{pId}")
@ResponseStatus(value=HttpStatus.NO_CONTENT)
public void addCartItem(@PathVariable(value="pId") int productId){
	User user=
	(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();

	String username=user.getUsername();
	Customer customer=customerService.getCustomerByUsername(username);//from Users where username=?
	Cart cart=customer.getCart();
	List<CartItem> cartItems= cart.getCartItems();

	Product product = productService.getProductById(productId);

	for (int i = 0; i <cartItems.size(); i++) {
	CartItem cartItem=cartItems.get(i);
	Product p=cartItem.getProduct();
	//1 == 1
	if(p.getpId()==productId){
	cartItem.setQuantity(cartItem.getQuantity() + 1);//increment the quantity
	cartItem.setTotalPrice(cartItem.getQuantity() * p.getpPrice()); //update the total price
	cartItemService.addCartItem(cartItem);//update the quantity in the cartitem
	return;
	} 
	}

	CartItem cartItem=new CartItem();
	cartItem.setQuantity(1);
	cartItem.setTotalPrice(cartItem.getQuantity() * product.getpPrice());
	cartItem.setProduct(product); //set product id
	cartItem.setCart(cart);//set cart id
	cartItemService.addCartItem(cartItem); //insert query
}

@RequestMapping("/cart/removeCartItem/{cartItemId}")
@ResponseStatus(value=HttpStatus.NO_CONTENT)
public void removeCartItem(@PathVariable int cartItemId){
	System.out.println("inside remove cart method");
	CartItem cartItem=cartItemService.getCartItem(cartItemId);
	cartItemService.removeCartItem(cartItem);
	System.out.println("inside remove cart method");
	
}
@RequestMapping("/cart/removeAllCartItems/{cartId}")
@ResponseStatus(value=HttpStatus.NO_CONTENT)
public void removeAllCartItems(@PathVariable int cartId){
	Cart cart=cartService.getCart(cartId);
	cartItemService.removeAllCartItems(cart);
}




}

