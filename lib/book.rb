class Book
  attr_writer :title, :author, :publication_year

  def initialize(data)
    @title = data[:title]
    @author = data[:author_first_name] + " " +  data[:author_last_name]
    @publication_date = data[:publication_date]
    @publication_year = @publication_date.split(',').last
  end

  # def publication_year
  #   year = @publication_date.split(',').last
  #   year[1]
  # end
end
