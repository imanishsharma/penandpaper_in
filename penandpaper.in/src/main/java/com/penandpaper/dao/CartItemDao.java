package com.penandpaper.dao;

import com.penandpaper.model.Cart;
import com.penandpaper.model.CartItem;

public interface CartItemDao {
void addCartItem(CartItem cartItem);
CartItem getCartItem(int cartItemId);
void removeCartItem(CartItem cartItem);
void removeAllCartItems(Cart cart);

}
