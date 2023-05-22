package com.zoho_crm_app.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.zoho_crm_app.dto.Email;
import com.zoho_crm_app.util.EmailService;

@Controller
public class EmailController {
	@Autowired
	private EmailService emailService;
	  @PostMapping("/sendEmail")
	public String getEmail(@RequestParam("email") String email, Model model) {
		  System.out.println("kishan");
		  model.addAttribute("email", email);
		return "compose_email";
	}
	  @PostMapping("/triggerEmail")
	  public String triggerEmail(Email email ,Model model) {
		  
		  emailService.sendEmail(email.getEmail(),email.getSubject(),email.getContent());
		  model.addAttribute("msg", "email sent");
		  return "compose_email";
		  
	  }

}
