require 'rspec'
require_relative '../src/label'

describe Label do
  describe '#initialize' do
    label = Label.new('Marked', id: 120)
    it 'The name of label is Marked' do
      expect(label.name).to eq('Marked')
    end

    it 'The id of label is from Integer type' do
      expect(label.id).to be_an_instance_of(Integer)
    end

    it 'The id of label should be 120' do
      expect(label.id).to eq(120)
    end

    it 'Currently Label has not item' do
      expect(label.items).to be_empty
    end
  end

  describe '#respond_to' do
    label = Label.new('Expired')
    it 'Label class has the id attribute' do
      expect(label).to respond_to(:id)
    end

    it 'Label class has the name attribute' do
      expect(label).to respond_to(:name)
    end

    it 'Label class has the items attribute' do
      expect(label).to respond_to(:items)
    end

    it 'Label class has the add_item method' do
      expect(label).to respond_to(:add_item)
    end
  end
end