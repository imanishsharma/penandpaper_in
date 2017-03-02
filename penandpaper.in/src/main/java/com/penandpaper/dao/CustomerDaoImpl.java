package com.penandpaper.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.penandpaper.model.Authorities;
import com.penandpaper.model.Cart;
import com.penandpaper.model.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao{
	
	@Autowired
private SessionFactory sessionFactory;
	public void saveCustomer(Customer customer) {
		Session session=sessionFactory.openSession();
		//child tables - Users, billingAddress,ShippingAddresss
		customer.getUsers().setEnabled(true);
		
		//Assignment
		String username=customer.getUsers().getUsername();
		String role="ROLE_USER";
		
		Authorities authorities=new Authorities();
		//set the values
		authorities.setUsername(username);
		authorities.setRole(role);
		
		session.save(authorities);  //insert into authorites values (?,?,'Role_USER');
		
		Cart cart=new Cart();
		customer.setCart(cart);
		
		cart.setCustomer(customer);//update cart set customer_id=? , grandtotal=? where cart_id=?
		session.save(customer);
		session.flush();
		session.close();		
	}

}
