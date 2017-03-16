package com.penandpaper.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.penandpaper.dao.CartItemDao;
import com.penandpaper.model.Cart;
import com.penandpaper.model.CartItem;

@Service
public class CartItemServiceImpl implements CartItemService {
	@Autowired
private CartItemDao cartItemDao;
	public void addCartItem(CartItem cartItem) {
	  cartItemDao.addCartItem(cartItem);
		
	}
	public CartItem getCartItem(int cartItemId) {
		// TODO Auto-generated method stub
		return null;
	}
	public void removeCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		
	}
	public void removeAllCartItems(Cart cart) {
		// TODO Auto-generated method stub
		
	}
	
}