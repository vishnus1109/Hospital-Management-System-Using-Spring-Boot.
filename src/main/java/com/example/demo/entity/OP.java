package com.example.demo.entity;

import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
@Component
public class OP {
@Id
@GeneratedValue(strategy=GenerationType.SEQUENCE)

private int Opid;
private String name;
private String gender;
private String age;
private String dateofbirth;
private String bloodgroup;
private String mobilenumber;
private String issue;
private String UserType;
private String todaydate;
public int getOpid() {
	return Opid;
}
public void setOpid(int opid) {
	Opid = opid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
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
public String getIssue() {
	return issue;
}
public void setIssue(String issue) {
	this.issue = issue;
}
public String getUserType() {
	return UserType;
}
public void setUserType(String userType) {
	UserType = userType;
}
public String getTodaydate() {
	return todaydate;
}
public void setTodaydate(String todaydate) {
	this.todaydate = todaydate;
}
@Override
public String toString() {
	return "OP [Opid=" + Opid + ", name=" + name + ", gender=" + gender + ", age=" + age + ", dateofbirth="
			+ dateofbirth + ", bloodgroup=" + bloodgroup + ", mobilenumber=" + mobilenumber + ", issue=" + issue
			+ ", UserType=" + UserType + ", todaydate=" + todaydate + "]";
}
public OP(int opid, String name, String gender, String age, String dateofbirth, String bloodgroup, String mobilenumber,
		String issue, String userType, String todaydate) {
	super();
	Opid = opid;
	this.name = name;
	this.gender = gender;
	this.age = age;
	this.dateofbirth = dateofbirth;
	this.bloodgroup = bloodgroup;
	this.mobilenumber = mobilenumber;
	this.issue = issue;
	UserType = userType;
	this.todaydate = todaydate;
}
public OP() {
	super();
	// TODO Auto-generated constructor stub
}

}
																									
