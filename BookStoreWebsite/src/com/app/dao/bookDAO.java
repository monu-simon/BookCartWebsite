package com.app.dao;

import java.util.List;

import com.app.entity.Book;
import com.app.entity.Customer;
import com.app.entity.User;

public interface bookDAO {
	public List<Book> getBookList();
	public Book getBook(int id);
	public void saveCustomer(Customer customer);
	public void saveUser(Customer user);
	public Customer login(String username,String password); 
	

}
