require_relative 'item'

class Movie < Item
  attr_reader :silent

  def initialize(silent, publish_date, id:nil)
    @silent = silent
    super(publish_date, id:id)
  end

  def silent?
    @silent
  end

  def can_be_archieved?
    super || silent?
  end

  def to_s
    details = ''
    details << super
    details << "\tSilent: #{silent}\n"
    details
  end
end
