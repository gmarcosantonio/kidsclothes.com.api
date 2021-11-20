package kidsclothes.com.api.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import kidsclothes.com.api.entities.Store;


public interface StoreRepository extends JpaRepository<Store, String> {

	Store findByStoreId(Long id);
	
	Store findByStoreCity(Long idcity);
	
}



