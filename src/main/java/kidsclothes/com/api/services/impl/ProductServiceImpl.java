package kidsclothes.com.api.services.impl;



import java.util.Optional;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kidsclothes.com.api.entities.Product;
import kidsclothes.com.api.repository.ProductRepository;
import kidsclothes.com.api.services.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@Service
public class ProductServiceImpl implements ProductService {

	
	 private static final Logger log = LoggerFactory.getLogger(ProductServiceImpl.class);
	 
	@Autowired
	private ProductRepository productRepository;

	@Override
	public Optional<Product> findByProductname(String productName) { 
		Log.info ("Searching Product by the Name ... {} " ,  productName);
		return Optional.ofNullable(productRepository.findByProductName(productName));
	}



	@Override
	public Product ProductPersist(String productname) {
		Log.info ("Persisting  Product ... {}" ,  productname);
		return this.productRepository.save(null);
	}

	
}