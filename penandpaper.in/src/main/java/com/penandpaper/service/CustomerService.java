package com.penandpaper.service;

import com.penandpaper.model.Customer;

public interface CustomerService {
	void saveCustomer(Customer customer);
	public Customer getCustomerByUsername(String username);


}
