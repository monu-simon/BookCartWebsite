package com.app.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class Customer {
	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", name=" + name + ", address=" + address + ", phone=" + phone
				+ ", date=" + date + ", book=" + book + "]";
	}

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Id

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int customerId;
	/*
	 * @GeneratedValue(strategy = GenerationType.AUTO)
	 * 
	 * @Column(name = "orderid") private int orderId;
	 */
	@Column(name = "name")
	private String name;
	@Column(name = "quantity")
	private int quantity;
	@Column(name="email")
	private String email;
	@Column(name="city")
	private String city;
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	@Column(name="pincode")
	private String pincode;

	@Column(name = "password")
	private String password;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	/*
	 * public int getOrderId() { return orderId; }
	 * 
	 * public void setOrderId(int orderId) { this.orderId = orderId; }
	 */

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	@Column(name = "address")
	private String address;

	public Customer(String name, int quantity, String address, String phone, String date,String password,String city,String pincode,String email) {
		super();
		this.name = name;
		this.quantity = quantity;
		this.address = address;
		this.phone = phone;
		this.date = date;
		this.password=password;
		this.email=email;
		this.pincode=pincode;
		this.city=city;

	}

	@Column(name = "phone")
	private String phone;

	@Column(name = "date")
	private String date;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "bookdetails")
	private Book book;

}
