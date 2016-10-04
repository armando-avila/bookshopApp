package org.example.bookshopApp

class BookController {
	
    def index() { 
		def books = Book.list([sort:"id",order:"asc"])
		def numBooks = books.size()
		return[books:books,numBooks:numBooks]
	}
	
	def create() {
		def book = new Book()
		return [book:book]
	}
	
	def save() {
		def book = new Book()
		def isbn = params.isbn
		def title = params.title
		def author = params.author
		def publisher = params.publisher
		def language = params.language
		
		if(!isbn.empty && isbn.isNumber()){
			book.setIsbn(isbn.toLong())
		}

		book.setTitle(title)
		book.setAuthor(author)
		book.setPublisher(publisher)
		book.setLanguage(language)
		
		if (book.validate()) {
			book.save(failOnError:true)
			redirect(action: "index")
		}
		else {
			render(view: 'create', model: [book: book])
		}
		
	}
	
	def read(){
		def id = params.id
		def book = Book.get(id)
		
		return [book:book]
	}
	
	def edit(){
		def id = params.id
		def book = Book.get(id)
		
		return [book:book]
	}
	
	def update = {
		def id = params.id
		def book = Book.get(id)
		def isbn = params.isbn
		def title = params.title
		def author = params.author
		def publisher = params.publisher
		def language = params.language
		
		if(!isbn.empty && isbn.isNumber()){
			book.setIsbn(isbn.toLong())
		}else{
			book.setIsbn(0)
		}
		
		book.setTitle(title)
		book.setAuthor(author)
		book.setPublisher(publisher)
		book.setLanguage(language)
	
		if (book.validate()) {
			book.save(failOnError:true)
			redirect(action: "index")
		}
		else {
			render(view: 'edit', model: [book: book])
		}
	}
	
	def accept = {
		redirect(action: "index")
	}
	
	def delete = {
		def id = params.id
		Book.get(id).delete()
		
		redirect(action: "index")
	}
	
	def about = {}
}
