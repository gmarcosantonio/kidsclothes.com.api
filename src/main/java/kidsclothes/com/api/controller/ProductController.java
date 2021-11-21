package kidsclothes.com.api.controller;



 
import java.util.List;
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


import kidsclothes.com.api.entities.Product;
import kidsclothes.com.api.response.Response;
import kidsclothes.com.api.services.ProductService;
import kidsclothes.com.api.dto.ProductDTO;

@RestController
@RequestMapping("/products")
@CrossOrigin(origins = "*")
public class ProductController {

	private static final Logger log = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	private ProductService productService;

	public ProductController() {
	}


	   
	/**
	 * Retorna uma loja dado id.
	 * 
	 * @param cnpj
	 * @return ResponseEntity<Response<ProductDto>>
	 */
	@GetMapping(value = "/id/{id}")
	public ResponseEntity<Response<ProductDTO>> buscarProductId(@PathVariable("id") Long id) {
		log.info("Searching product by id: {}", id);
		Response<ProductDTO> response = new Response<ProductDTO>();
		Optional<Product> product = productService.buscarProductId(id);

		if (!product.isPresent()) {
			log.info("Product not found for id: {}", id);
			response.getErrors().add("Product not found for id " + id);
			return ResponseEntity.badRequest().body(response);
		}


		return ResponseEntity.ok(response);
	}
	
	@GetMapping(value = "/name/{productName}")
	public ResponseEntity<Response<ProductDTO>> buscarProductNamey(@PathVariable("productName") String productName) {
		log.info("Searching product by Name: {}", productName);
		Response<ProductDTO> response = new Response<ProductDTO>();
		Optional<Product> product = productService.buscarProductName(productName);

		if (!product.isPresent()) {
			log.info("Product not found for id: {}", productName);
			response.getErrors().add("Product not found for Name " + productName);
			return ResponseEntity.badRequest().body(response);
		}


		return ResponseEntity.ok(response);
	}

	@GetMapping(value = "/desc/{productDescription}")
	public ResponseEntity<Response<ProductDTO>> buscarProductDescriptiony(@PathVariable("productDescription") String productDescription) {
		log.info("Searching product by Description: {}", productDescription);
		Response<ProductDTO> response = new Response<ProductDTO>();
		Optional<Product> product = productService.buscarProductDescription(productDescription);

		if (!product.isPresent()) {
			log.info("Product not found for id: {}", productDescription);
			response.getErrors().add("Product not found for Description " + productDescription);
			return ResponseEntity.badRequest().body(response);
		}


		return ResponseEntity.ok(response);
	}


}

