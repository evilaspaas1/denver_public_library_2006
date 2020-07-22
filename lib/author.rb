class Author
  attr_reader :name,
              :books

  def initialize(author_param)
    @name = author_param[:first_name] + " " + author_param[:last_name]
    @books = []
  end

  def write(title, publication_date)
    details = {
    author_first_name: @first_name,
    author_last_name: @last_name,
    title: title,
    publication_date: publication_date
    }
    new_book = Book.new(details)
    @books << new_book
    new_book
  end
end
