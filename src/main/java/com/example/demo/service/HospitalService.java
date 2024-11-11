package com.example.demo.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Admins;
import com.example.demo.entity.Children;
import com.example.demo.entity.Gents;
import com.example.demo.entity.Ladies;
import com.example.demo.entity.Nurse;
import com.example.demo.entity.OP;
import com.example.demo.repository.AdminRep;
import com.example.demo.repository.ChildRep;
import com.example.demo.repository.GenRep;
import com.example.demo.repository.LadRep;
import com.example.demo.repository.NurseRep;
import com.example.demo.repository.OutRep;

@Service
public class HospitalService {
@Autowired 
Admins a1;
@Autowired
ChildRep cr;

@Autowired
GenRep gr;
@Autowired 
OP o1;
@Autowired
AdminRep ar;
@Autowired
OutRep or;

@Autowired
LadRep lr;

@Autowired
NurseRep nr;
public boolean checkUser(String email,String pass) {
	// TODO Auto-generated method stub
	boolean b = false;
	try {
		Admins a1=ar.getById(email);
		System.out.println("aaaaa " + a1.getEmail());
		System.out.println("bbbb "+a1.getPassword());
		if(email.equals(a1.getEmail()) && pass.equals(a1.getPassword())) {   //checks given email(primary key)
				b = true;
				}
			else {
				b = false;
			}
		return b;
	}
	catch(Exception e) {
		System.out.println(e);
		b = false;
	}
	return b;
}

//public boolean checkEmailExists(String email) {
   // return ar.existsByEmail(email);
//}

public List<Gents> ingen() {
	// TODO Auto-generated method stub
	return gr.findAll();
}

public List<OP> getOp() {
	// TODO Auto-generated method stub
	return or.findAll();
}

public List<Ladies> inlad() {
	// TODO Auto-generated method stub
	return lr.findAll();
}

public List<Children> inchild() {
	// TODO Auto-generated method stub
	return cr.findAll();
}



	public List<Admins> viewadmin() {
		// TODO Auto-generated method stub
		
		return ar.findAll();
	}

	public Admins getById(String email) {
		// TODO Auto-generated method stub
		return ar.getById(email);	}

	public boolean updateadmin(Admins a1) {
		boolean b=false;
		try {
			ar.save(a1);
		}
		catch(Exception e) {
			b=true;
		}
	     return b;
		// TODO Auto-generated method stub
		
	}

	public boolean deleteAdmin(String email) {
		boolean b=false;
		try {
			ar.deleteById(email);
		}
		catch(Exception e) {
			b=true;
		}
		return b;
	}

	public List<Gents> ingents() {
		// TODO Auto-generated method stub
		return gr.findAll();
	}

	public List<Ladies> lady() {
		// TODO Auto-generated method stub
		return lr.findAll();
	}

	public Admins findByMobilenumber(String mobilenumber) {
		// TODO Auto-generated method stub
		return ar.findByMobilenumber(mobilenumber);

	}

	public void updatePassword(Admins a, String newPassword) {
		a.setPassword(newPassword); // Password should be hashed
        ar.save(a);
		
	}
    
	 private Map<String, String> otpStorage = new HashMap<>();
	
	public String generateOTP(Admins a) {
		String otp = String.valueOf((int) (Math.random() * 9000) + 1000);
        otpStorage.put(a.getMobilenumber(), otp); // Store OTP mapped to the user's identifier
        return otp;
        }

	 public void sendOTP(Admins a, String otp) {
	        // Code to send OTP to the registered email and phone number
	        System.out.println("Sending OTP: " + otp + " to " + a.getMobilenumber());
	        // Implement actual SMS/Email sending logic here
	    }
	 
	 public boolean validateOTP(Admins a, String otp) {
	        String storedOtp = otpStorage.get(a.getMobilenumber());
	        return storedOtp != null && storedOtp.equals(otp);
	    }

	public List<Nurse> getNurse() {
		// TODO Auto-generated method stub
		return nr.findAll();
	}

	
}



