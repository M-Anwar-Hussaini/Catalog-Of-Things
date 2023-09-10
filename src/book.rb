require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, publish_date)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archieved?
    @cover_state.to_s.downcase == 'bad'
  end

  def to_s
    "[#{self.class}]: Publisher: #{publisher}, Cover State: #{cover_state}, Publish Date: #{publish_date}"
  end
end
