module ItemCreation
  def create_book
    publisher = get_text('Please enter the book\'s publisher: ')
    cover_state = get_text("Please enter book's cover state: ")
    publish_date = get_text("Please enter book's publish date in the format of [yyyy-mm-dd]: ")
    Book.new(publisher, cover_state, publish_date)
  end
end
