package com.example.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Nurse {
	@Id
private String name;
private String idnumber;
private String department;
private String dateofbirth;
private String idproof;
private String idproofnumber;
private String contact;
private String bloodgroup;
private String timing;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getIdnumber() {
	return idnumber;
}
public void setIdnumber(String idnumber) {
	this.idnumber = idnumber;
}
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
public String getDateofbirth() {
	return dateofbirth;
}
public void setDateofbirth(String dateofbirth) {
	this.dateofbirth = dateofbirth;
}
public String getIdproof() {
	return idproof;
}
public void setIdproof(String idproof) {
	this.idproof = idproof;
}
public String getIdproofnumber() {
	return idproofnumber;
}
public void setIdproofnumber(String idproofnumber) {
	this.idproofnumber = idproofnumber;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getBloodgroup() {
	return bloodgroup;
}
public void setBloodgroup(String bloodgroup) {
	this.bloodgroup = bloodgroup;
}
public String getTiming() {
	return timing;
}
public void setTiming(String timing) {
	this.timing = timing;
}
@Override
public String toString() {
	return "Nurse [name=" + name + ", idnumber=" + idnumber + ", department=" + department + ", dateofbirth="
			+ dateofbirth + ", idproof=" + idproof + ", idproofnumber=" + idproofnumber + ", contact=" + contact
			+ ", bloodgroup=" + bloodgroup + ", timing=" + timing + "]";
}
public Nurse(String name, String idnumber, String department, String dateofbirth, String idproof, String idproofnumber,
		String contact, String bloodgroup, String timing) {
	super();
	this.name = name;
	this.idnumber = idnumber;
	this.department = department;
	this.dateofbirth = dateofbirth;
	this.idproof = idproof;
	this.idproofnumber = idproofnumber;
	this.contact = contact;
	this.bloodgroup = bloodgroup;
	this.timing = timing;
}
public Nurse() {
	super();
	// TODO Auto-generated constructor stub
}


}
