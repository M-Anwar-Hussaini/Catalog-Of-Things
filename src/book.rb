require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, publish_date, id: nil)
    @publisher = publisher
    @cover_state = cover_state
    super(publish_date, id: id)
  end
end
