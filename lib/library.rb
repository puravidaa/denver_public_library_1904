require './lib/book'
require './lib/author'
require './lib/library'

class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
  end

  def books
    @authors.map do |author|
      author.books.find_all do |book|
        book
      end
    end.flatten
  end

  def publication_time_frame_for(author)
    # => why are book instance variables not being passed to author class?
    publication_hash = {}

    publication_year = books.find_all do |book|
      book.publication_year
      publication_hash[:start] = publication_year
      publication_hash[:end] = publication_year
    end
  end
end
