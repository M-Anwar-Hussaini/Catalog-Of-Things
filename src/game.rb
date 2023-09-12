require 'date'
require_relative 'item'

class Game < Item
  def initialize(multiplayer, last_played_at, publish_date, id: nil)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
    super(publish_date, id: id)
  end

end
