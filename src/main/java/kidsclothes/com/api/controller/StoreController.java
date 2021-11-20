package kidsclothes.com.api.controller;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import kidsclothes.com.api.dto.StoreDTO;


@RestController
@RequestMapping("/api/stores")
public class StoreController {
	
@PostMapping
public ResponseEntity<StoreDTO> cadastrar(
		@RequestBody StoreDTO storeDTO) {
	storeDTO.setId(1L);
	return ResponseEntity.ok(storeDTO);
}


}

