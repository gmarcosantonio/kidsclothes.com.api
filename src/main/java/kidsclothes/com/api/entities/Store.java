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
@Table(name = "stores")
public class Store implements Serializable {
	
private static final long serialVersionUID = 3960436649365666213L;

private Long id;
private String address;
private Long idcity;
private String city;
private String zipcode;
private String storename;


/**
`idStore` int NOT NULL,
  `address` varchar(100) NOT NULL,
  `idcity` int NOT NULL,
  `city` varchar(45) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `storename` varchar(45) DEFAULT NULL,

*/

public Store() {
}
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
public Long getId() {
return id;
}
public void setId(Long id) {
this.id = id;
}

@Column(name = "address", nullable = false)
public String getAddress() {
return address;
}

public void setAddress(String address) {
this.address = address;
}

@Column(name = "idcity", nullable = false)
public Long getIdCity() {
return idcity;
}

public void setIdcity(Long idcity) {
this.idcity = idcity;
}

@Column(name = "city", nullable = false)
public String getCity() {

return city;
}

public void setCity(String city) {
this.city = city;
}


@Column(name = "zipcode", nullable = false)
public String getZipcode() {

return zipcode;
}

public void setZipcode(String zipcode) {
this.zipcode = zipcode;
}


@Column(name = "storename", nullable = false)
public String getStorename() {

return storename;
}

public void setStorename(String storename) {
this.city = storename;
}


@Override
public String toString() {
return "Store [id=" + id + ", address=" + address + ", idcity=" + idcity + ", city=" + city +", zipcode=" + zipcode +", storename=" + storename + "]";
}

}

