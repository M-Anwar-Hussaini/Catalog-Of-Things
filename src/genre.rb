require_relative 'item'

class Genre
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name, id: nil)
    @id = id.nil? ? rand(1...1000) : id
    @name = name
    @items = []
  end
end