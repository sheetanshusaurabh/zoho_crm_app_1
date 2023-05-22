package com.zoho_crm_app.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zoho_crm_app.entity.Contacts;



public interface ContactsRepository extends JpaRepository<Contacts, Long> {

}
