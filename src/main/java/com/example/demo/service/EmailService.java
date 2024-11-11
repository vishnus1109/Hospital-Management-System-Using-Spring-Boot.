package com.example.demo.service;



import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailService {
    @Autowired
    private JavaMailSender mailSender;

    public void sendEmail(String to, String subject, String text) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject(subject);
        message.setText(text);
        mailSender.send(message);
        System.out.println("Mail Sent");
    }
    public void sendEmailWithAttachment(String to, String subject, String text,String attachment) throws MessagingException {
        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper=new MimeMessageHelper(message,true);
        helper.setSubject(subject);
        helper.setText(text);
        helper.setTo(to);
        
        FileSystemResource resource= new FileSystemResource(new File(attachment));
        helper.addAttachment(resource.getFilename(), resource);
        mailSender.send(message);
        System.out.println("Mail Sent With Attachment");
    }
}

