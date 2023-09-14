require 'spec_helper'
require_relative '../src/genre'

RSpec.describe Genre do
  let(:genre) { Genre.new(name) }
  let(:name) { 'Rock' }

  describe '#initialize' do
    it 'should create a new genre' do
      expect(genre).to be_an_instance_of Genre
    end
  end

  describe '#add_item' do
    let(:item) { double('item') }

    context 'when the provided argument is not instance of Item class' do
      it 'should raise an ArgumentError' do
        expect { genre.add_item(item) }.to raise_error(ArgumentError)
      end
    end
  end
end
