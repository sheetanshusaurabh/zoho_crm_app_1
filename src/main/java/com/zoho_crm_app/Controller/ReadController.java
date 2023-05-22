package com.zoho_crm_app.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zoho_crm_app.Services.ContactsService;
import com.zoho_crm_app.Services.ReadService;
import com.zoho_crm_app.entity.Contacts;
import com.zoho_crm_app.entity.Read;


@Controller
public class ReadController {
	@Autowired
private ReadService readService;
@Autowired
private ContactsService contactsService;
	@GetMapping("/viewCreateRead")
	public String viewCreateRead() {
		System.out.println(100);
		return "createRead";
		}
	@PostMapping("/saveLead")
	public String saveLead(@ModelAttribute("read") Read read,Model model) {
		readService.saveRead(read);
		System.out.println(100);
		model.addAttribute("read",read);
		return "read_info";
	}
	@RequestMapping("/convertRead")
	public String convertRead( @RequestParam ("id") long id ,ModelMap model) {
		Read read = readService.findLeadById(id);
		Contacts contacts=new Contacts();
		contacts.setFirstName(read.getFirstName());
		contacts.setLastName(read.getLastName());
		contacts.setEmail(read.getEmail());
		contacts.setMobile(read.getMobile());
		contacts.setSource(read.getSource());
		contactsService.saveContacts(contacts);
		readService.deleteReadById(id);
		List<Contacts> contact = contactsService.getAllContacts();{
			model.addAttribute("contact", contact);
			return "list_contacts";
		
	}
	}
	@RequestMapping("/listAll")
	public String listAllRead(ModelMap model) {
		List<Read> read = readService.getAllRead();
		{
			model.addAttribute("read", read);
			return "list_reads";
		}
		
		
	}
	@RequestMapping("readInfo")
	public String readInfo(@RequestParam("id") long id,Model model) {
		Read read = readService.findLeadById(id);
		model.addAttribute("read", read);
		System.out.println("poki");
		return "read_info";
	}

}
