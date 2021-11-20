package kidsclothes.com.api.services;


import java.util.Optional;

import kidsclothes.com.api.entities.Store;




public interface StoreService {
		
		/* Consult Srore by city ou country
		 * 
		 *  
		 *  
		 *  
		 *  
		 *  
		 *  */
		
		Optional<Store> findByStoreName(String storename);

		
		Optional<Store> findByStoreCity(String city);
		 
		 
		
		/* Insert a new Store */
		
		Store ProductPersist(String storename);

}


