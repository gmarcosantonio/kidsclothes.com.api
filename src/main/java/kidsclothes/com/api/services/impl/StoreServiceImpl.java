package kidsclothes.com.api.services.impl;




import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kidsclothes.com.api.repository.StoreRepository;
import kidsclothes.com.api.services.StoreService;

@Service
public class StoreServiceImpl implements StoreService {

@Autowired

private StoreRepository storerepository;

@Override
public Optional<Stores> findbystorecity(String city) { 
	
	

	return Optional.ofNullable(storerepository.findByStoreCity(city));
}

@Override
public Optional<Stores> findbystorename(String storename) { 
	
	

	return Optional.ofNullable(storerepository.findbystorename(storename));
}


