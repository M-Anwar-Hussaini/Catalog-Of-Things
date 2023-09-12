require 'rspec'
require_relative '../src/label'
require_relative  '../src/book'

describe Label do
  describe '#initialize' do
    before do
      @label = Label.new('Marked', id: 120)
    end

    it 'The name of label is Marked' do
      expect(@label.name).to eq('Marked')
    end

    it 'The id of label is from Integer type' do
      expect(@label.id).to be_an_instance_of(Integer)
    end

    it 'The id of label should be 120' do
      expect(@label.id).to eq(120)
    end

    it 'Currently Label has not item' do
      expect(@label.items).to be_empty
    end
  end

  describe '#respond_to' do
    before do
      @label = Label.new('Expired')
    end
    it 'Label class has the id attribute' do
      expect(@label).to respond_to(:id)
    end

    it 'Label class has the name attribute' do
      expect(@label).to respond_to(:name)
    end

    it 'Label class has the items attribute' do
      expect(@label).to respond_to(:items)
    end

    it 'Label class has the add_item method' do
      expect(@label).to respond_to(:add_item)
    end
  end

  describe '#add_item' do
    before do
      @label = Label.new('New')
      @book = Book.new('Ali Baba', 'Brand', '2009-2-2')
    end

    it 'Label has no item at the beginning' do
      expect(@label.items).to be_empty
    end

    it 'After adding one item the list of items increases.' do
      @label.add_item(@book)
      expect(@label.items.length).to eq(1)
    end
    
    it 'The book is in the list of the label' do
      @label.add_item(@book)
      expect(@label.items).to include(@book)
    end
  end
end