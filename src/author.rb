require_relative 'item'

class Author
  attr_accessor :first_name, :last_name
  attr_reader :id, :items

  def initialize(first_name, last_name)
    @id = rand(1...1000)
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
    @items = []
  end

  def add_item(item)
    raise ArgumentError('The argument is not an instance of item.') unless item.is_a?(Item)

    item.author = self
    items << item
  end

  def to_s
    "[Author] #{first_name} #{last_name}"
  end
end
