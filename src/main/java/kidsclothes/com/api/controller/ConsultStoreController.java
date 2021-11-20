package kidsclothes.com.api.controller;


	import java.util.List;
	import org.springframework.http.ResponseEntity;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestBody;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RestController;
	import kidsclothes.com.api.dto.StoreDTO;
	import kidsclothes.com.api.repository.StoreByCountry;


	@RestController
	@RequestMapping({"/contacts"})
	public class ConsultStoreController {

	   private StoreByCountry repository;

	   ConsultStoreController(StoreByCountry storeRepository) {
	       this.repository = storeRepository;
	   }
	   // métodos do CRUD aqui
	   
	   @GetMapping
	   public List findAll(){
	      return repository.findAll();
	   }
	   
	}
	   
	 /*
	   @GetMapping(path = {"/{id}"})
	   public ResponseEntity findByidCountry(@PathVariable long id){
	      return repository.findByidCountry(id).map(record -> ResponseEntity.ok().body(record)).orElse(ResponseEntity.notFound().build());
	   }
	}
	

	@RestController
	@RequestMapping({"/stores"})
	public class ConsultStoreController {
		
	*@GetMapping("/stores")
	public ResponseEntity<StoreDTO> consult(
			@RequestBody StoreDTO storeDTO) {
		storeDTO.getCity(1L);
		return ResponseEntity.ok(storeDTO);
	}

	
	@GetMapping(path = {"/{id}"})
	public ResponseEntity<StoreDTO> GetCity{
	   return repository.findById(id)
	           .map(record -> ResponseEntity.ok().body(record))
	           .orElse(ResponseEntity.notFound().build());
	}
	*/
	
