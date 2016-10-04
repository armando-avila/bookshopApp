import org.example.bookshopApp.Book

class BootStrap {

    def init = { servletContext ->
		new Book(
			isbn: 123456,
			title: "Learning Laravel",
			author: "Antonio Olvera",
			publisher: "Santillana Press",
			language: "Spanish"
			).save(failOnError:true)
		
		new Book(
			isbn: 4534534,
			title: "Under the dome",
			author: "Stephen King",
			publisher: "Hilla Press",
			language: "English"
			).save(failOnError:true)
    }
	
    def destroy = {
    }
}
