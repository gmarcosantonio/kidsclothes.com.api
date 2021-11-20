package kidsclothes.com.api.repository;


import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import kidsclothes.com.api.entities.Store;
import java.util.List;

import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;



@Transactional(readOnly = true)
@NamedQueries({
				@NamedQuery( name = "StorebyCountryRepository.findByidCountry", query = "SELECT s.storename Storename FROM stores s  , city ci, country co "
					+ "where s.idcity = ci.idcity and co.idcountry = ci.idcountry and co.idcountry=:idcountry") })

public interface StoreByCountry extends JpaRepository<Store, String> {
	
	 List<Store> findByidCountry(@Param("idcountry") Long idcountry);

	 Page<Store> findByidCountry(@Param("idcountry") Long idcountry, Page pageble); 

}



