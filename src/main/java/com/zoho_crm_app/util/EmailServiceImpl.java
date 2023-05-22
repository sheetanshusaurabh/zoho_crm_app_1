package com.zoho_crm_app.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class EmailServiceImpl implements EmailService {
	@Autowired
	private JavaMailSender mailSender;
	@Override
	public void sendEmail(String to, String sub, String msg) {
     SimpleMailMessage message=new SimpleMailMessage();
    message.setTo(to);
    message.setSubject(sub);
    message.setText(msg);
    mailSender.send(message);
	}

}
