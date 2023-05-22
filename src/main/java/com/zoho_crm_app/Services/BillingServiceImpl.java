package com.zoho_crm_app.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.zoho_crm_app.Repository.BillingRepository;
import com.zoho_crm_app.entity.Billing;
import com.zoho_crm_app.util.EmailService;
import com.zoho_crm_app.util.PdfGenerator;
@Service
public class BillingServiceImpl implements BillingServices {
	@Autowired
	private BillingRepository billingRepo;
	 @Autowired
	  private PdfGenerator pdfGenerator;
	  @Autowired
	  private EmailService emailUtil;

	@Override
	public Billing saveBilling( Billing bill ) {
		Billing save = billingRepo.save(bill);
		
		String filePath="C:\\old version sts 4.8.1\\zoho_crm_app-1\\pdfGeneration//reservation"+save.getId()+".pdf";
		pdfGenerator.generatePDF(save,filePath);
		//emailUtil.sendEmail(save.getEmail(), filePath);
		
return save;
	}

}
