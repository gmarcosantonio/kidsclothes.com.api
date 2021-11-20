package kidsclothes.com.api.dto;


public class ProductDTO {
private Long id;
private String productName;
private String productDescription;
private String price;

public ProductDTO() {
}


public Long getId() {
return id;
}
public void setId(Long id) {
this.id = id;
}
public String getProductName() {
return productName;
}
public void setProductName(String productName) {
this.productName = productName;
}

public String getProductDescription() {
return productDescription;
}
public void setProductDescription(String productDescription) {
this.productDescription = productDescription;
}

public String getPrice() {
return price;
}
public void setCity(String price) {
this.price = price;
}
@Override
public String toString() {
return "ProductDTO [id=" + id + ", Name=" + productName +  ", Description=" + productDescription +", Price=" + price + "]";
}
}

