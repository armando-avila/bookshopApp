package org.example.bookshopApp

class Book {
	long isbn = 0
	String title
	String author
	String publisher
	String language
		
    static constraints = {
		isbn blank:false, unique:true, validator: {value, object ->
                if (value == 0) return 'org.example.bookshopApp.Book.isbn.zero' 
				}
		title blank:false
		author blank:false
		publisher blank:false  
		language blank:false, inList: ["Spanish", "English","French"]
    }
}
