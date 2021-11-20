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
		
		Optional<Product> findByProductname(String productName);

		
		Optional<Product> findByProductdescription(String productDescription);
		 
		 
		
		/* Insert a new Store */
		
		Product ProductPersist(String productName);

}


