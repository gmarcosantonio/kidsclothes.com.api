package kidsclothes.com.api.services.impl;



import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.cache.annotation.Cacheable;

import  kidsclothes.com.api.entities.Product;
import  kidsclothes.com.api.services.ProductService;
import  kidsclothes.com.api.repository.ProductRepository;




@Service
public class ProductServiceImpl implements ProductService {


	private static final Logger log = LoggerFactory.getLogger(StoreServiceImpl.class);
	 
	@Autowired
	private ProductRepository productRepository;
	
	@Cacheable("ProductServiceImpl")
	
	@Override
	public Optional<Product> buscarProductId(Long id) { 
		log.info("Searching for a  Product by id {}", id);
		return Optional.ofNullable(productRepository.findByProductId(id));
	}
	
	@Override
	public Optional<Product> buscarProductName(String productName) { 
		log.info("Searching Product by the Name ... {} " ,  productName);
		return Optional.ofNullable(productRepository.findByProductName(productName));
	}

	@Override
	public Optional<Product> buscarProductDescription(String productDescription) { 
		log.info("Searching Product by the Description ... {} " ,  productDescription);
		return Optional.ofNullable(productRepository.findByProductDescription(productDescription));
	}


	
}