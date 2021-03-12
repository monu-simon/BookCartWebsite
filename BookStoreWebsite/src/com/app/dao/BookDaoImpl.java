package com.app.dao;

import java.util.List;

import org.hibernate.query.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.entity.Book;
import com.app.entity.Customer;
import com.app.entity.User;

@Repository
public class BookDaoImpl implements bookDAO {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<Book> getBookList() {
		// TODO Auto-generated method stub
		Session curreSession=sessionFactory.getCurrentSession();
		Query<Book> theQuery=curreSession.createQuery("from Book",Book.class);
		List<Book> books=theQuery.getResultList();
		return books;
	
	}
	@Override
	public Book getBook(int id) {
		// TODO Auto-generated method stub
		Session curreSession=sessionFactory.getCurrentSession();
		Book book=curreSession.get(Book.class,id);
		return book;
	}
	@Override
	public void saveCustomer(Customer customer) {
		// TODO Auto-generated method stub
		Session curretSession=sessionFactory.getCurrentSession();
		curretSession.saveOrUpdate(customer);
		
	}
	@Override
	public void saveUser(Customer user) {
		// TODO Auto-generated method stub
		Session curretSession=sessionFactory.getCurrentSession();
		curretSession.saveOrUpdate(user);
		
	}
	@Override
	public Customer login(String username, String password) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		int userFound = 0;
		String SQL_QUERY =" from Customer   where phone=:user and password=:pass";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter("user",username);
		query.setParameter("pass",password);
		try {
		Customer user = (Customer) query.getSingleResult();
		session.close();
		return user;
		}catch(Exception e) {
			Customer user=null;
			return user;
		}
		
	}

}
