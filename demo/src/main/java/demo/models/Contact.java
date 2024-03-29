package main.java.demo.models;

import java.util.*;

public class Contact {
	private int id;
	private String firstName;
	private String lastName;
	private String phoneNumber;
	private String email;
	private String address;
	private Date lastContactedDate;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getLastContactedDate() {
		return lastContactedDate;
	}
	public void setLastContactedDate(Date lastContactedDate) {
		this.lastContactedDate = lastContactedDate;
	}
}
