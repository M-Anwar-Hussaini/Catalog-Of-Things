require 'date'

class Item
  attr_accessor :genre, :author, :source, :label
  attr_reader :id, :archieved, :publish_date

  def initialize(publish_date, id: nil)
    @id = id.nil? ? rand(1...1000) : id
    @publish_date = Date.parse(publish_date)
    @archieved = can_be_archieved?
  end
end
