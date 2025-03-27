package com.app.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.model.Book;
import com.app.repository.BookRepository;



@Service
public class BookService {

	@Autowired
	BookRepository br;
	
	public void addbook(Book book) {
	br.save(book);

	}

	public List<Book> viewAllBook() {
		// TODO Auto-generated method stub
		return br.findAll();
	}

public List<Book> deleteBook(int bookID) {
		
		br.deleteById(bookID);
		
		return br.findAll();
		
	}

public Book editstudent(int id) {
	
	Optional<Book> op=br.findById(id);
	if(op.isPresent()) {
		Book s=op.get();
		return s;
	}else 
		return null;

}

public List<Book> updatestudent(Book s) {
	br.save(s);
	return br.findAll();
}


}


