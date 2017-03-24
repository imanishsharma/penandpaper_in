package com.penandpaper.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.penandpaper.model.Cart;
import com.penandpaper.model.CartItem;
import com.penandpaper.model.CustomerOrder;

@Repository
public class CustomerOrderDaoImpl implements CustomerOrderDao {
	@Autowired
private SessionFactory sessionFactory;
	public void addCustomerOrder(Cart cart) {
	CustomerOrder customerOrder=new CustomerOrder();
	customerOrder.setCart(cart);
	customerOrder.setCustomer(cart.getCustomer());
	customerOrder.setBillingAddress(cart.getCustomer().getBillingAddress());
	customerOrder.setShippingAddress(cart.getCustomer().getShippingAddress());
	//Insert the data in CustomerOrder table
	Session session=sessionFactory.openSession();
	session.save(customerOrder);
	
	//To update grandtotal in Cart table
	
	List<CartItem> cartItems=cart.getCartItems();
	double grandTotal=0.0;
	for(CartItem cartItem:cartItems){
		grandTotal=grandTotal + cartItem.getTotalPrice();
	}
	cart.setGrandTotal(grandTotal);
	//update cart set grandtotal=? where cartid=?
	session.update(cart);
	session.flush();
	session.close();
	}
	public void addCustomerOrder(CustomerOrder customerOrder) {
		// TODO Auto-generated method stub
		
	}
	
	
	
	}


