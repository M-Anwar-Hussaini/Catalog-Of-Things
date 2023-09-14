require 'rspec'
require_relative '../src/author'
require_relative '../src/item'

describe Author, Item do
  author = Author.new('John', 'Doe')
  describe 'Test class initialize' do
    it 'The author is from the class of Author' do
      expect(author).to be_an_instance_of(Author)
    end

    it 'The author has first name John' do
      expect(author.first_name).to eq('John')
    end

    it 'The author has last name Doe' do
      expect(author.last_name).to eq('Doe')
    end
  end
end
