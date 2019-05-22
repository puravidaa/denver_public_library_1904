require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'
require 'pry'

class BookTest < Minitest::Test

  def setup
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  def test_it_exists
    assert_instance_of Author, @charlotte_bronte
  end

  def test_it_has_a_name
    assert_equal "Charlotte Bronte", @charlotte_bronte.name
  end

  def test_books_starts_empty
    assert_equal [], @charlotte_bronte.books
  end

  def test_author_writes_books
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    assert_instance_of Book, jane_eyre
  end

  def test_author_writes_more_books
    book_1 = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    book_2 = @charlotte_bronte.write("Villette", "1853")

    assert_equal [book_1,book_2], @charlotte_bronte.books
  end
end
