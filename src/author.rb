
require_relative 'item'

class Author
  def initialize(first_name, last_name, id: nil)
    @id = id.nil? ? rand(1...1000) : id
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
    @items = []
  end

  def add_item(item)
    raise ArgumentError('The argument is not an instance of item.') unless item.is_a?(Item)

    item.author = self
    items << item
  end
end
