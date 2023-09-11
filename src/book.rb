require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, publish_date, id:nil)
    @publisher = publisher
    @cover_state = cover_state
    super(publish_date, id:id)
  end

  def can_be_archieved?
    @cover_state.to_s.downcase == 'bad'
  end

  def to_s
    details = ''
    details << super
    details << "\tPublisher: #{publisher}\n"
    details << "\tCover state: #{cover_state}\n"
    details
  end
end
