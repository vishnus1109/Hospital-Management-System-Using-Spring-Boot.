//package com.example.demo.service;
//
//import java.util.HashMap;
//import java.util.Map;
//
//import org.springframework.stereotype.Service;
//
//import com.example.demo.entity.Admins;
//@Service
//public class OtpService {
//	
//	    private Map<String, String> otpStorage = new HashMap<>();
//
//	    // Generate OTP for user
//	    public String generateOTP(Admins a) {
//	        String otp = String.valueOf((int) (Math.random() * 9000) + 1000);
//	        otpStorage.put(a.getEmailOrMobileNumber(), otp); // Store OTP mapped to the user's identifier
//	        return otp;
//	    }
//
//	    // Send OTP via email or phone (this could be SMS or email service)
//	    public void sendOTP(Admins a, String otp) {
//	        // Code to send OTP to the registered email and phone number
//	        System.out.println("Sending OTP: " + otp + " to " + a.getEmailOrMobileNumber());
//	        // Implement actual SMS/Email sending logic here
//	    }
//
//	    // Validate OTP
//	    public boolean validateOTP(Admins a, String otp) {
//	        String storedOtp = otpStorage.get(a.getEmailOrMobileNumber());
//	        return storedOtp != null && storedOtp.equals(otp);
//	    }
//	}
//
//
