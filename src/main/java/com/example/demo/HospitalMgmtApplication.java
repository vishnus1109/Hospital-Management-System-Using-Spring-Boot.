package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;

import com.example.demo.service.EmailService;

import jakarta.mail.MessagingException;

@SpringBootApplication
public class HospitalMgmtApplication {
    @Autowired
    private EmailService emailservice;
	public static void main(String[] args) {
		SpringApplication.run(HospitalMgmtApplication.class, args);
	}
	
	@EventListener(ApplicationReadyEvent.class)
	public void triggerMail() throws MessagingException {
    emailservice.sendEmail("hospitalbee15@gmail.com","SpringDemo","springbootEmailSending");
    emailservice.sendEmailWithAttachment("hospitalbee15@gmail.com","SpringDemo","springbootEmailSending","D:\\patients.xlsx");
}
}