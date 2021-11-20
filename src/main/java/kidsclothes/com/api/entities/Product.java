package kidsclothes.com.api.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;


@Entity
@Table(name = "product")
public class Product implements Serializable {
	
private static final long serialVersionUID = 3960436649365666213L;

private Long id;
private String productCode;
private String productName;
private String productDescription;
private Float price;
private Long quantityInStock;
private String productcol;

/**
`idproduct` int NOT NULL AUTO_INCREMENT,
`productCode` varchar(45) NOT NULL,
`productName` varchar(45) NOT NULL,
`productDescription` varchar(45) NOT NULL,
`Price` decimal(10,2) NOT NULL,
`quantityInStock` int NOT NULL DEFAULT '0',
`productcol` varchar(45) DEFAULT NULL,

*/

public Product() {
}
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
public Long getId() {
return id;
}
public void setId(Long id) {
this.id = id;
}

@Column(name = "productCode", nullable = false)
public String getProductCode() {
return productCode;
}

public void setProductCode(String productCode) {
this.productCode = productCode;
}

@Column(name = "productName", nullable = false)
public String getProductName() {
return productName;
}

public void setProductName(String productName) {
this.productName = productName;
}

@Column(name = "productDescription", nullable = false)
public String getProductDescription() {

return productDescription;
}

public void setProductDescription(String productDescription) {
this.productDescription = productDescription;
}

@Column(name = "price", nullable = false)
public Float getPrice() {
return price;
}

public void setPrice(Float price) {
this.price = price;
}


@Override
public String toString() {
return "Product [id=" + id + ", productCode=" + productCode + ", productName=" + productName + ",productDescription=" + productDescription 
		+ ",price=" + price + "]";
}

}
