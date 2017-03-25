package com.penandpaper.dao;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.penandpaper.model.Cart;
import com.penandpaper.model.CartItem;

@Repository
public class CartDaoImpl implements CartDao{
	
	 @Autowired
	    private CustomerOrderDao customerOrderDao;
@Autowired 
public SessionFactory sessionFactory;
	public Cart getCart(int cartId) {
	Session session=sessionFactory.openSession();
	Cart cart=(Cart)session.get(Cart.class, cartId);
	session.close();
	return cart;
	}
	
	 public Cart validate(int cartId) throws IOException{
	        Cart cart = getCart(cartId);
	        if(cart == null || cart.getCartItems().size() == 0){
	            throw new IOException(cartId + "");
	        }

	       //update(cart);
	        return cart;
	    }
	 
	/* public void update(Cart cart){
	        int cartId = cart.getId();
	        double grandTotal = customerOrderDao(cartId);
	        cart.setGrandTotal(grandTotal);

	        Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(cart);
	    }*/
}

