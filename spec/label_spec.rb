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
  end
end