package kidsclothes.com.api.dto;

public class StoreDTO {
	
private Long id;
private String storename;
private String city;
public StoreDTO() {
}


public Long getId() {
return id;
}
public void setId(Long id) {
this.id = id;
}
public String getStorename() {
return storename;
}
public void setStorename(String storename) {
this.storename = storename;
}
public String getCity() {
return city;
}
public void setCity(String city) {
this.city = city;
}
@Override
public String toString() {
return "StoreDTO [id=" + id + ", Name=" + storename + ", City=" + city + "]";
}
}

