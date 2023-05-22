package com.zoho_crm_app.Services;

import java.util.List;

import com.zoho_crm_app.entity.Read;





public interface ReadService {
	public void saveRead(Read read);

	public Read findLeadById(long id);

	public void deleteReadById(long id);

	

	public List<Read> getAllRead();
	

}
