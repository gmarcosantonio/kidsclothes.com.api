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
		
		Optional<Store> buscarStoreId(Long idStore);

		
		Optional<Store> buscarStoreCity(Long idcity);
		 
		 

}


