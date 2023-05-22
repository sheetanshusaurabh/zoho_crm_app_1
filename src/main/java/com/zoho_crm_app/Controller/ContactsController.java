package com.zoho_crm_app.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zoho_crm_app.Services.ContactsService;
import com.zoho_crm_app.entity.Contacts;





@Controller
public class ContactsController {
	@Autowired
	private ContactsService contactsService;
	@RequestMapping("/listAllContacts")
	public String listAllContacts(ModelMap model) {
		List<Contacts> contact = contactsService.getAllContacts();{
			model.addAttribute("contact", contact);
			return "list_contacts";
		}
}
	
}