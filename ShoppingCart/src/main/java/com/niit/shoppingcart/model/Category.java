package com.niit.shoppingcart.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.Session;

@Entity
public class Category implements Serializable {
	@Id
	private String id;
	@Column(unique=true)
	private String name;
	private String desc;	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@OneToMany(mappedBy="category", fetch=FetchType.EAGER)
	private Set<Product> products;
	
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	

}
