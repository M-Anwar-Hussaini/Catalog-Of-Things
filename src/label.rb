require_relative 'item'
require_relative 'book'

class Label
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name)
    @id = rand(1...1000)
    @name = name
    @items = []
  end

  def add_item(item)
    raise ArgumentError('The provided argument is not instance of "Item".') unless item.is_a?(Item)

    item.label = self
    @items << item
  end

  def to_s
    name
  end
end
