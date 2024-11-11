package com.example.demo.entity;

import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
@Component
public class Children {
@Id
@GeneratedValue(strategy=GenerationType.SEQUENCE)
private int Ipid;
private String name;
private String age;
private String dateofbirth;
private String bloodgroup;
private String mobilenumber;
private String address;
private String father;
private String mother;
private String aadhaarnumber;
private String problem;
private String admitin;
private String admiton;
private String dischargeon;
private String UserType;
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
public String getFather() {
	return father;
}
public void setFather(String father) {
	this.father = father;
}
public String getMother() {
	return mother;
}
public void setMother(String mother) {
	this.mother = mother;
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
public String getUserType() {
	return UserType;
}
public void setUserType(String userType) {
	UserType = userType;
}
@Override
public String toString() {
	return "Children [Ipid=" + Ipid + ", name=" + name + ", age=" + age + ", dateofbirth=" + dateofbirth
			+ ", bloodgroup=" + bloodgroup + ", mobilenumber=" + mobilenumber + ", address=" + address + ", father="
			+ father + ", mother=" + mother + ", aadhaarnumber=" + aadhaarnumber + ", problem=" + problem + ", admitin="
			+ admitin + ", admiton=" + admiton + ", dischargeon=" + dischargeon + ", UserType=" + UserType + "]";
}
public Children(int ipid, String name, String age, String dateofbirth, String bloodgroup, String mobilenumber,
		String address, String father, String mother, String aadhaarnumber, String problem, String admitin,
		String admiton, String dischargeon, String userType) {
	super();
	Ipid = ipid;
	this.name = name;
	this.age = age;
	this.dateofbirth = dateofbirth;
	this.bloodgroup = bloodgroup;
	this.mobilenumber = mobilenumber;
	this.address = address;
	this.father = father;
	this.mother = mother;
	this.aadhaarnumber = aadhaarnumber;
	this.problem = problem;
	this.admitin = admitin;
	this.admiton = admiton;
	this.dischargeon = dischargeon;
	UserType = userType;
}
public Children() {
	super();
	// TODO Auto-generated constructor stub
}

}