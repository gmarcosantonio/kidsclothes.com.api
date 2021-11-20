package kidsclothes.com.api.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import kidsclothes.com.api.entities.Store;


public interface StoreRepository extends JpaRepository<Store, String> {

	Store findByStoreCity(String city);
	
	Store findByStoreName(String storename);
}



