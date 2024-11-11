package com.example.demo.component;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.example.demo.service.EmailService;

@Component
public class EmailScheduler {

    @Autowired
    private EmailService emailService;

    // Set interval in milliseconds (e.g., 60000 ms for 1 minute)
    @Scheduled(fixedRate = 1200000000) // or use a cron expression if needed
    public void sendScheduledEmail() {
        String to = "hospitalbee15@gmail.com";
        String subject = "Scheduled Email";
        String text = "This is an automated email sent at a regular interval.";
        
        emailService.sendEmail(to, subject, text);
        System.out.println("Scheduled email sent!");
    }
}