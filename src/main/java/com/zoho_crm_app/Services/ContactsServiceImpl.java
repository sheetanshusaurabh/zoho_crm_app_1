package com.zoho_crm_app.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zoho_crm_app.Repository.ContactsRepository;
import com.zoho_crm_app.entity.Contacts;


@Service
public class ContactsServiceImpl implements ContactsService {
@Autowired
private ContactsRepository contactRepository;
	@Override
	public void saveContacts(Contacts contacts) {
		contactRepository.save(contacts);

	}
	@Override
	public List<Contacts> getAllContacts() {
		
		List<Contacts> findAll = contactRepository.findAll();
		return findAll;
		}
	@Override
	public Contacts getContactById(long id) {
		Optional<Contacts> findById = contactRepository.findById(id);
		Contacts contacts = findById.get();
		return contacts;
	}

}
