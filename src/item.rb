require 'date'

class Item
  attr_accessor :genre, :author, :source, :label
  attr_reader :id, :archieved, :publish_date
end
