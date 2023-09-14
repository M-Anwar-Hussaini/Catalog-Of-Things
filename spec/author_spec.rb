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

  describe 'Test method add_item' do
    before do
      @item = Item.new('2000-2-2')
    end

    it 'The author has no item at the beginning' do
      expect(author.items).to be_empty
    end

    it 'The author has added an item' do
      author.add_item(@item)
      expect(author.items.length).to eq(1)
    end

    it 'The author has added an item with the correct date' do
      author.add_item(@item)
      expect(author.items[0].publish_date).to eq(Date.parse('2000-2-2'))
    end

    it 'The author has added an item with the correct author' do
      author.add_item(@item)
      expect(author.items[0].author).to eq(author)
    end

    it 'The author has aggregated from the item class' do
      expect(author.items).to include(Item)
    end
  end

  describe 'Test accessors and readers' do
    it 'Author class has the first_name attribute' do
      expect(author).to respond_to(:first_name)
    end

    it 'Author class has the last_name attribute' do
      expect(author).to respond_to(:last_name)
    end

    it 'Author class has the items attribute' do
      expect(author).to respond_to(:items)
    end

    it 'Author class has the id attribute' do
      expect(author).to respond_to(:id)
    end
  end
end
