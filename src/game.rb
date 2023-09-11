require 'date'
require_relative 'item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date, id: nil)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
    super(publish_date, id: id)
  end

  def can_be_archieved?
    Date.today.year - last_played_at.year > 2
  end

  def to_s
    details = ''
    details << super
    details << "\tMultiplayer: #{multiplayer}\n"
    details << "\tLast Played: #{last_played_at}\n"
    details
  end
end
