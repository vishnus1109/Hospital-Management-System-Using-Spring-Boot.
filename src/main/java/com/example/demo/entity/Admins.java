package com.example.demo.entity;
import org.springframework.stereotype.Component;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
@Component
public class Admins {
@Id
//@GeneratedValue(strategy=GenerationType.SEQUENCE)
//private int Id;
@Column(unique = true, nullable = false)
private String email;
private String name;
private String department;
private String experience;
private String shift;
private String mobilenumber;
private String category;
private String usertype;
private String password;
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
public String getExperience() {
	return experience;
}
public void setExperience(String experience) {
	this.experience = experience;
}
public String getShift() {
	return shift;
}
public void setShift(String shift) {
	this.shift = shift;
}
public String getMobilenumber() {
	return mobilenumber;
}
public void setMobilenumber(String mobilenumber) {
	this.mobilenumber = mobilenumber;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getUsertype() {
	return usertype;
}
public void setUsertype(String usertype) {
	this.usertype = usertype;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "Admins [email=" + email + ", name=" + name + ", department=" + department + ", experience=" + experience
			+ ", shift=" + shift + ", mobilenumber=" + mobilenumber + ", category=" + category + ", usertype="
			+ usertype + ", password=" + password + "]";
}
public Admins(String email, String name, String department, String experience, String shift, String mobilenumber,
		String category, String usertype, String password) {
	super();
	this.email = email;
	this.name = name;
	this.department = department;
	this.experience = experience;
	this.shift = shift;
	this.mobilenumber = mobilenumber;
	this.category = category;
	this.usertype = usertype;
	this.password = password;
}
public Admins() {
	super();
	// TODO Auto-generated constructor stub
}

public String getEmailOrMobileNumber() {
	// TODO Auto-generated method stub
	return null;
}



}








