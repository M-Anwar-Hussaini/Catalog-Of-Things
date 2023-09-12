require 'rspec'
require_relative '../src/book'
require_relative '../src/item'

describe Book, Item do
  book = Book.new('Amazon', 'Normal', '2000-11-4')
  describe '#initialize' do
    it 'The publisher of book is Amazon' do
      expect(book.publisher).to eq('Amazon')
    end

    it 'The book is from the class of Book' do
      expect(book).to be_an_instance_of(Book)
    end

    it 'The cover state of the book is Normal' do
      expect(book.cover_state).to eq('Normal')
    end
  end

  
end
