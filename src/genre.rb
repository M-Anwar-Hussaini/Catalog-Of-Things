require_relative 'item'

class Genre
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name, id:nil)
    @id = id.nil? ? rand(1...1000) : id
    @name = name
    @items = []
  end

  def add_item(item)
    raise ArgumentError('The provided argument is not instance of Item class') unless item.is_a?(Item)

    item.genre = self
    @items << item
  end

  def to_s
    "[Genre] #{name}"
  end
end
