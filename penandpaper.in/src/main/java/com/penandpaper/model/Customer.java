package com.penandpaper.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@NotEmpty(message="Please Enter First Name")	
private String firstname;
@NotEmpty(message="Please Enter Last Name")
private String lastname;
@NotEmpty(message="Please Enter Email")
@Email(message="Enter a valid Email Address")
private String email;
@NotEmpty(message="Please Enter Mob. No.")
@Length(max=10,min=10)
private String phonenumber;
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="users_id")
private Users users;
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="billlingaddress_id")
private BillingAddress billingAddress;
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="shippingaddress_id")
private ShippingAddress shippingAddress;
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="cart_id")
private Cart cart;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhonenumber() {
	return phonenumber;
}
public void setPhonenumber(String phonenumber) {
	this.phonenumber = phonenumber;
}
public Users getUsers() {
	return users;
}
public void setUsers(Users users) {
	this.users = users;
}
public BillingAddress getBillingAddress() {
	return billingAddress;
}
public void setBillingAddress(BillingAddress billingAddress) {
	this.billingAddress = billingAddress;
}
public ShippingAddress getShippingAddress() {
	return shippingAddress;
}
public void setShippingAddress(ShippingAddress shippingAddress) {
	this.shippingAddress = shippingAddress;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}

}
