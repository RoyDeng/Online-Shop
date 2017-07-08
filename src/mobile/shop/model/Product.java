package mobile.shop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



public class Product {
	private Long id;
	private String name;
	private String imageSrc;
	private Double price;
	private String description;
	private Integer stock;
	
	public Product() {
		super();
	}
	
	public Product(String name) {
		super();
		this.name = name;
	}
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getImageSrc() {
		return imageSrc;
	}
	
	public void setImageSrc(String imageSrc) {
		this.imageSrc = imageSrc;
	}
	
	public Double getPrice() {
		return price;
	}
	
	public void setPrice(Double price) {
		this.price = price;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Integer getStock() {
		return stock;
	}
	
	public void setStock(Integer stock) {
		this.stock = stock;
	}
}