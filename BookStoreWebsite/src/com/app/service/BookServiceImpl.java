package com.app.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.bookDAO;
import com.app.entity.Book;
import com.app.entity.Customer;
import com.app.entity.User;

@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private bookDAO bookdao;
	
	@Override
	@Transactional
	public List<Book> getBookList() {
		// TODO Auto-generated method stub
		return bookdao.getBookList();
	}

	@Override
	@Transactional
	public Book getBook(int id) {
		// TODO Auto-generated method stub
		return bookdao.getBook(id);
	}

	@Override
	@Transactional
	public void saveCustomer(Customer customer) {
		// TODO Auto-generated method stub
		bookdao.saveCustomer(customer);
		
	}

	@Override
	@Transactional
	public void saveUser(Customer user) {
		// TODO Auto-generated method stub
		bookdao.saveUser(user);
		
	}

	@Override
	@Transactional
	public Customer login(String username, String password) {
		// TODO Auto-generated method stub
		return bookdao.login(username, password);
				}

}
