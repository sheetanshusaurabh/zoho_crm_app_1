package com.zoho_crm_app.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zoho_crm_app.Services.BillingServices;
import com.zoho_crm_app.Services.ContactsService;
import com.zoho_crm_app.entity.Billing;
import com.zoho_crm_app.entity.Contacts;

@Controller
public class BillingController {
	@Autowired
	private ContactsService contactService;
	@Autowired
	private BillingServices billingservice;
	
	@RequestMapping("/generateBill")
	public String viewBillingPage(@RequestParam ("id") long id ,Model model) {
		Contacts contact=contactService.getContactById(id);
		//System.out.println(198765);
		model.addAttribute("contact", contact);
		return "generate_bill";
		
	}
	@RequestMapping("/saveBill")
	public String saveBill(Billing bill ,Model model) {
		Billing saveBilling = billingservice.saveBilling(bill);
		model.addAttribute("saveBilling", saveBilling);
		return "show_bill";
	}
	

}
