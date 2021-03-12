package com.app.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="book")
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="bookid")
	private int bookId; 
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Column(name="bookname")
	private String bookName;
	@Column(name="bookauthor")
	private String bookAuthor;
	@Column(name="bookprice")
	private int price;

	/*
	 * @Override public String toString() { return "Book [bookId=" + bookId +
	 * ", bookName=" + bookName + ", bookAuthor=" + bookAuthor + ", price=" + price
	 * + "]"; }
	 */
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Book(String bookName, String bookAuthor, int price) {
		super();
		this.bookName = bookName;
		this.bookAuthor = bookAuthor;
		this.price = price;
	} 

}
