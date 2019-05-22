class Author
  attr_reader :books, :name

  def initialize(name)
    @name = (name[:first_name] + " " + name[:last_name]).to_s
    @books = []
  end

  #takes two strings as args, returns instance of Books class
  def write(title, publication_date)
    book = Book.new({title: @title, author: @author, publication_date: @publication_date})
    @books << book
    book
  end

end
