require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify, publish_date, id: nil)
    super(publish_date, id: id)
    @on_spotify = on_spotify
  end

  def can_be_archieved?
    super && on_spotify
  end

  def to_s
    details = ''
    details << super
    details << "\tOn Spotify: #{on_spotify}\n"
    details
  end
end
