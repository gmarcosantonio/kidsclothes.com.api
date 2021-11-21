package kidsclothes.com.api.controller;



 
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import kidsclothes.com.api.entities.Store;
import kidsclothes.com.api.response.Response;
import kidsclothes.com.api.services.StoreService;
import kidsclothes.com.api.dto.StoreDTO;

@RestController
@RequestMapping("/api/stores")
@CrossOrigin(origins = "*")
public class StoreController {

	private static final Logger log = LoggerFactory.getLogger(StoreController.class);

	@Autowired
	private StoreService storeService;

	public StoreController() {
	}

	/**
	 * Retorna uma loja dado id.
	 * 
	 * @param id
	 * @return ResponseEntity<Response<StoreDto>>
	 */
	@GetMapping(value = "/id/{id}")
	public ResponseEntity<Response<StoreDTO>> buscarStoreId(@PathVariable("id") Long id) {
		log.info("Searching store by id: {}", id);
		Response<StoreDTO> response = new Response<StoreDTO>();
		Optional<Store> store = storeService.buscarStoreId(id);

		if (!store.isPresent()) {
			log.info("Store not found for id: {}", id);
			response.getErrors().add("Store not found for id " + id);
			return ResponseEntity.badRequest().body(response);
		}


		return ResponseEntity.ok(response);
	}
/*
	@GetMapping(value = "/city/{idcity}")
	public ResponseEntity<Response<StoreDTO>> buscarStoreCity(@PathVariable("idcity") Long idcity) {
		log.info("Searching store by cityid: {}", idcity);
		Response<StoreDTO> response = new Response<StoreDTO>();
		Optional<Store> store = storeService.buscarStoreCity(idcity);

		if (!store.isPresent()) {
			log.info("Store not found for id: {}", idcity);
			response.getErrors().add("Store not found for cityid " + idcity);
			return ResponseEntity.badRequest().body(response);
		}


		return ResponseEntity.ok(response);
	}
*/
	
}



