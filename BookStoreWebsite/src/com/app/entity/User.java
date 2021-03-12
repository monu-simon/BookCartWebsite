package com.app.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	@Id
	@Column(name="mobileno")
	private double mobileNo; 
	@Column(name="password")
	private String password;
	@Column(name="email")
	private String email;
	public double getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(double mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public User(double mobileNo, String password, String email, String address, String city, int pinCode) {
		super();
		this.mobileNo = mobileNo;
		this.password = password;
		this.email = email;
		this.address = address;
		this.city = city;
		this.pinCode = pinCode;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getPinCode() {
		return pinCode;
	}
	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}
	@Column(name="address")
	private String address;
	@Column(name="city")
	private String city; 
	@Column(name="pincode")
	private int pinCode;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [mobileNo=" + mobileNo + ", password=" + password + ", email=" + email + ", address=" + address
				+ ", city=" + city + ", pinCode=" + pinCode + "]";
	} 
	

}
