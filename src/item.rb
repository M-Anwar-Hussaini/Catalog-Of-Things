require 'date'

class Item
  attr_accessor :genre, :author, :source, :label
  attr_reader :id, :archieved, :publish_date

  def initialize(publish_date, id:nil)
    @id = id.nil? ? rand(1...1000) : id
    @publish_date = Date.parse(publish_date)
    @archieved = can_be_archieved?
  end

  def move_to_archive
    @archieved = can_be_archieved?
  end

  def publish_date=(date_str)
    @publish_date = Date.parse(date_str)
    move_to_archive
  end

  def can_be_archieved?
    Date.today.year - publish_date.year > 10
  end

  def to_s
    details = ''
    details << "\tItem: #{self.class}\n"
    details << "\tID: #{id}\n"
    details << "\tPublish date: #{publish_date}\n"
    details << "\tArchieved: #{archieved}\n"
    details
  end
end
