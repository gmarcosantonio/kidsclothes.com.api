package kidsclothes.com.api.repository;




import org.springframework.data.jpa.repository.JpaRepository;
import kidsclothes.com.api.entities.Product;


public interface ProductRepository extends JpaRepository<Product, String> {

	Product findByProductId(Long id);
	Product findByProductName(String productName);
	Product findByProductDescription(String productDescription);
}