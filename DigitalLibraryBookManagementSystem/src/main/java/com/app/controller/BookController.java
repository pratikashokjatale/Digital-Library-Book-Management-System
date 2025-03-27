package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.Book;
import com.app.service.BookService;






@Controller
public class BookController {

	@Autowired
	BookService bs;
	
	
	@RequestMapping("/")
	public String bookHomePage(Model m) {
		List<Book>list=bs.viewAllBook();
		if(!list.isEmpty()) {
		m.addAttribute("data", list);
		}
		return "bookHomePage";
	}
	
	@RequestMapping("/goToAddBook")
	public String goToAddBook() {
		return "goToAddBook";
	}
	
	@RequestMapping("/addbook")
	public String addBook(@ModelAttribute Book book) {
		bs.addbook(book);
		return "bookHomePage";
	}
	
	
	
	@RequestMapping("/viewbook")
	public String viewAllBook(Model m) {
		List<Book>list=bs.viewAllBook();
		if(!list.isEmpty()) {
		m.addAttribute("data", list);
		}
		return "viewAllbook";
	}
	 @RequestMapping("/delet")
	    public String deleteBook(@RequestParam("bookID") int bookID,Model m) {
		  List<Book>list=    bs.deleteBook(bookID);
		  m.addAttribute("data", list);
	        return "bookHomePage";
	    }
	
	 @RequestMapping("/edit")
		public String editstudent(@RequestParam("bookID")int id,Model m) {
		 Book s=bs.editstudent(id);
			
				m.addAttribute("stu", s);
				return "editBook";
			
		}
		
		@RequestMapping("/editbook")
		public String deletestudent(@ModelAttribute Book s,Model m) {
			
	     List<Book> list=bs.updatestudent(s);
	        m.addAttribute("data", list);
			return "viewAllbook";
		}
		
		
	
}
