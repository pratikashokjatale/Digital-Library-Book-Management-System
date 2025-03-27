package com.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.app.model.Book;

@Repository
public interface BookRepository extends JpaRepository<Book, Integer>{

	
	
	
	public List<Book> findByTitle(String title);

}
