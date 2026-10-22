package com.aadi.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import lombok.Data;
@Entity
@Data
public class Student {
	@jakarta.persistence.Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer Id;
	private String Name;
	private String Mobile_No;
	private String Email;
	private String Gender;
	private String Address;
	private String  Coursename;
	private String Timing;
	private Double Fee;
	

}
