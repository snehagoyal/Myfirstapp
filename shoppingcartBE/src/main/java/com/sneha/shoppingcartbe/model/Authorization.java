package com.sneha.shoppingcartbe.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Authorization implements Serializable{
	@Id
	private String id;
	private String Role;
	public String getId() {
		return id;
	}
	public void setId(String string) {
		this.id = string;
	}
	public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		Role = role;
	}
	
}
