package com.penandpaper.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Users {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@NotEmpty(message="Please Enter User Name")	
@Column(unique=true)
private String username;
@NotEmpty(message="Please Enter Password")
private String password;
private boolean enabled;
@OneToOne(mappedBy="users")
private Customer customer;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public boolean isEnabled() {
	return enabled;
}
public void setEnabled(boolean enabled) {
	this.enabled = enabled;
}

}