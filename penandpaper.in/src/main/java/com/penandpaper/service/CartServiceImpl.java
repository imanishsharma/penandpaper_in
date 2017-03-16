package com.penandpaper.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.penandpaper.dao.CartDao;
import com.penandpaper.model.Cart;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
private CartDao cartDao;
	public Cart getCart(int cartId) {
	return cartDao.getCart(cartId);
	}

} 