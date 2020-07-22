class Book
  attr_reader :title,
              :author_first_name,
              :author_last_name,
              :publication_year

  def initialize(book_param)
    @title = book_param[:title]
    @author_first_name = book_param[:author_first_name]
    @author_last_name = book_param[:author_last_name]
    @publication_year = book_param[:publication_date].split.last
  end

  def author
    "#{author_first_name} #{author_last_name}"
  end
end
