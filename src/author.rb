
require_relative 'item'

class Author
  def initialize(first_name, last_name, id: nil)
    @id = id.nil? ? rand(1...1000) : id
    @first_name = first_name.capitalize
    @last_name = last_name.capitalize
    @items = []
  end
end
