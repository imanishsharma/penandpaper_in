package com.penandpaper.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.penandpaper.model.Cart;
import com.penandpaper.model.CartItem;

@Repository
public class CartDaoImpl implements CartDao{
@Autowired 
public SessionFactory sessionFactory;
	public Cart getCart(int cartId) {
	Session session=sessionFactory.openSession();
	Cart cart=(Cart)session.get(Cart.class, cartId);
	session.close();
	return cart;
	}
	

}

