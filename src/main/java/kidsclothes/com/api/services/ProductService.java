package kidsclothes.com.api.services;


import java.util.Optional;

import kidsclothes.com.api.entities.Product;




public interface ProductService {
		
		/* Consult Srore by city ou country
		 * 
		 *  
		 *    `productName` varchar(45) NOT NULL,
  			`productDescription` varchar(45) NOT NULL,
		 *  
		 *  
		 *  
		 *  
		 *  
		 *  
		 *  */
		Optional<Product> buscarProductId(Long id);
	
		Optional<Product> buscarProductName(String productName);

		
		Optional<Product> buscarProductDescription(String productDescription);
		 
		 


}


