package com.zoho_crm_app.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zoho_crm_app.Repository.ReadRepository;
import com.zoho_crm_app.entity.Read;


@Service
public class ReadServiceImpl implements ReadService {
	@Autowired
private ReadRepository readRepo;
	
	@Override
	public void saveRead(Read read) {
		readRepo.save(read);
		
		

	}
	@Override
	public Read findLeadById(long id) {
		Optional<Read> findById = readRepo.findById(id);
		Read read = findById.get();
		return read;
		
	}
	@Override
	public void deleteReadById(long id) {
		readRepo.deleteById(id);
		
	}
	
		
	
	@Override
	public List<Read> getAllRead() {
		  List<Read> findAll = readRepo.findAll();
		return findAll;
	}

}
