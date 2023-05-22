package com.zoho_crm_app.Services;

import java.util.List;

import com.zoho_crm_app.entity.Contacts;



public interface ContactsService {
	public void saveContacts(Contacts contacts);

	public List<Contacts> getAllContacts();

	public Contacts getContactById(long id);

}
