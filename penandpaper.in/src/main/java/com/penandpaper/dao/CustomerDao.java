package com.penandpaper.dao;

import com.penandpaper.model.Customer;

public interface CustomerDao {
void saveCustomer(Customer customer);
Customer getCustomerByUsername(String username);

}