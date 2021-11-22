package kidsclothes.com.api.services.impl;


import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.cache.annotation.Cacheable;

import  kidsclothes.com.api.entities.Store;
import  kidsclothes.com.api.services.StoreService;
import  kidsclothes.com.api.repository.StoreRepository;


@Service
public class StoreServiceImpl implements StoreService {


private static final Logger log = LoggerFactory.getLogger(StoreServiceImpl.class);
	
@Autowired

private StoreRepository storeRepository;

@Cacheable("StoreServiceImpl")

@Override
public Optional<Store> buscarStoreId(Long id) {
	log.info("Looking for a  Store by id {}", id);
	return Optional.ofNullable(storeRepository.findByStoreId(id));
}


@Override
public Optional<Store> buscarStoreCity(Long idcity) { 

	
	log.info("Looking for a  Store by Cityid {}", idcity);
	return Optional.ofNullable(storeRepository.findByStoreCity(idcity));
}


}

