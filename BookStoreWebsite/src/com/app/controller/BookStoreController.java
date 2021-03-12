package com.app.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.entity.Book;
import com.app.entity.Customer;
import com.app.entity.ProductToCart;
import com.app.entity.User;
import com.app.service.BookService;


@Controller
@RequestMapping("/book")
public class BookStoreController {
	
	@Autowired
	private BookService bookService;
	
	@RequestMapping(path="/show",method=RequestMethod.GET)
	public String show(Model theModel)
	{
		List<Book> books=bookService.getBookList();
		theModel.addAttribute("books",books);
		return "bookslist";
	}
	@RequestMapping(path="/purchase")
	public String showBookDetails(@RequestParam("bookId") int id,Model theModel)
	{
		Book book=bookService.getBook(id);
		theModel.addAttribute("book", book);
		ProductToCart product=new ProductToCart();
		theModel.addAttribute("cart",product);
		return "purchase"; 
	}
	@RequestMapping("/add")
	public  String customer(@ModelAttribute("cart") ProductToCart cart,Model theModel)
	{
		System.out.println(cart.getBookId());
		Book book=bookService.getBook(cart.getBookId());
		Customer customer=new Customer(); 
		theModel.addAttribute("customer",customer);
		theModel.addAttribute("book",book);
		
		return "customer"; 
	}
	@RequestMapping("/confirm")
	public String confirm(@ModelAttribute("customer") Customer customer,@RequestParam("bookId") int theId,Model model)
	{
		System.out.println("***********");
		System.out.println(theId);
		 Date date = Calendar.getInstance().getTime();  
         DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");  
         String strDate = dateFormat.format(date); 
         customer.setDate(strDate);
         Book book=new Book();
         book=bookService.getBook(theId);
         customer.setBook(book);
         System.out.println(customer.getBook());
         bookService.saveCustomer(customer);
         return "success";
	}
	@GetMapping("/register")
	public String register(Model theModel)
	{
		
		Customer customer=new Customer();
		theModel.addAttribute("customer",customer);
		return "reg";
	}
	@RequestMapping("/saveUser")
	public String saveUser(@ModelAttribute("customer") Customer user)
	{
		bookService.saveCustomer(user);
		return "redirect:/book/register";
	}
	@GetMapping("/login")
	public String login(Model theModel) {
		
		return "login"; 
	}
	@GetMapping("/loginn")
	public String entry(HttpServletRequest request, HttpServletResponse response, Model theModel,HttpSession session) {
		String username = request.getParameter("username");
		
		System.out.println("*********");
		
		String password = request.getParameter("password");
		Customer user=bookService.login(username, password);
		System.out.println(user);
		if(user==null)
		{
			return "redirect:/book/login";
		}else {
			session.setAttribute("logindata", user);
			return "redirect:/book/show";
		}
	}
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response, Model theModel,HttpSession session)
	{
		 request.getSession().invalidate();
		 return "redirect:/book/login"; 
	}

}
