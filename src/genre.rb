require_relative 'item'

class Genre
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name, id: nil)
    @id = id.nil? ? rand(1...1000) : id
    @name = name
    @items = []
  end

  def add_item(item)
    unless item.is_a?(Item)
      raise ArgumentError, 'The provided argument is not an instance of Item class'
    end

    item.genre = self
    @items << item
  end

  def to_s
    "[Genre] #{name}"
  end
end
