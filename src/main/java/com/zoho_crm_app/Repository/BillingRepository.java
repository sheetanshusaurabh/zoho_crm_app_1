package com.zoho_crm_app.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zoho_crm_app.entity.Billing;

public interface BillingRepository extends JpaRepository<Billing, Long> {
	

}
