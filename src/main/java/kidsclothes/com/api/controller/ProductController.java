package kidsclothes.com.api.controller;



import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import kidsclothes.com.api.dto.ProductDTO;


@RestController
@RequestMapping("/api/products")
public class ProductController {
	
@PostMapping
public ResponseEntity<ProductDTO> cadastrar(
		@RequestBody ProductDTO productDTO) {
	productDTO.setId(1L);
	return ResponseEntity.ok(productDTO);
}


}

