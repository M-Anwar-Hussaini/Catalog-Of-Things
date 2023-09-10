require_relative 'item'

class Source
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name)
    @id = rand(1...1000)
    @name = name
    @items = []
  end

  def add_item(item)
    raise ArgumentError("The item argument isn't from the instance of Item class") unless item.is_a?(Item)

    item.source = self
    items << item
  end

  def to_s
    "[Source] #{name}"
  end
end
