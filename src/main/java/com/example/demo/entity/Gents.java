package com.example.demo.entity;



import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
@Component
public class Gents {
@Id
@GeneratedValue(strategy=GenerationType.SEQUENCE)
private int Ipid;
private String name;
private String age;
private String dateofbirth;
private String bloodgroup;
private String mobilenumber;
private String address;
private String gaurdian;
private String aadhaarnumber;
private String problem;
private String admitin;
private String admiton;
private String dischargeon;
private String usertype;
public int getIpid() {
	return Ipid;
}
public void setIpid(int ipid) {
	Ipid = ipid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAge() {
	return age;
}
public void setAge(String age) {
	this.age = age;
}
public String getDateofbirth() {
	return dateofbirth;
}
public void setDateofbirth(String dateofbirth) {
	this.dateofbirth = dateofbirth;
}
public String getBloodgroup() {
	return bloodgroup;
}
public void setBloodgroup(String bloodgroup) {
	this.bloodgroup = bloodgroup;
}
public String getMobilenumber() {
	return mobilenumber;
}
public void setMobilenumber(String mobilenumber) {
	this.mobilenumber = mobilenumber;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getGaurdian() {
	return gaurdian;
}
public void setGaurdian(String gaurdian) {
	this.gaurdian = gaurdian;
}
public String getAadhaarnumber() {
	return aadhaarnumber;
}
public void setAadhaarnumber(String aadhaarnumber) {
	this.aadhaarnumber = aadhaarnumber;
}
public String getProblem() {
	return problem;
}
public void setProblem(String problem) {
	this.problem = problem;
}
public String getAdmitin() {
	return admitin;
}
public void setAdmitin(String admitin) {
	this.admitin = admitin;
}
public String getAdmiton() {
	return admiton;
}
public void setAdmiton(String admiton) {
	this.admiton = admiton;
}
public String getDischargeon() {
	return dischargeon;
}
public void setDischargeon(String dischargeon) {
	this.dischargeon = dischargeon;
}
public String getUsertype() {
	return usertype;
}
public void setUsertype(String usertype) {
	this.usertype = usertype;
}
@Override
public String toString() {
	return "Gents [Ipid=" + Ipid + ", name=" + name + ", age=" + age + ", dateofbirth=" + dateofbirth + ", bloodgroup="
			+ bloodgroup + ", mobilenumber=" + mobilenumber + ", address=" + address + ", gaurdian=" + gaurdian
			+ ", aadhaarnumber=" + aadhaarnumber + ", problem=" + problem + ", admitin=" + admitin + ", admiton="
			+ admiton + ", dischargeon=" + dischargeon + ", usertype=" + usertype + "]";
}
public Gents(int ipid, String name, String age, String dateofbirth, String bloodgroup, String mobilenumber,
		String address, String gaurdian, String aadhaarnumber, String problem, String admitin, String admiton,
		String dischargeon, String usertype) {
	super();
	Ipid = ipid;
	this.name = name;
	this.age = age;
	this.dateofbirth = dateofbirth;
	this.bloodgroup = bloodgroup;
	this.mobilenumber = mobilenumber;
	this.address = address;
	this.gaurdian = gaurdian;
	this.aadhaarnumber = aadhaarnumber;
	this.problem = problem;
	this.admitin = admitin;
	this.admiton = admiton;
	this.dischargeon = dischargeon;
	this.usertype = usertype;
}
public Gents() {
	super();
	// TODO Auto-generated constructor stub
}

}
