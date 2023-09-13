require 'json'

module FileToArray
  def read_file(path)
    JSON.parse(File.read(path))
  end

  def items_to_array(path)
    read_file(path).map do |item|
      case item['Type']
      when 'Book' then create_book_obj(item)
      when 'Game' then create_game_obj(item)
      when 'Movie' then create_movie_obj(item)
      when 'MusicAlbum' then create_album_obj(item)
      end
    end
  end

  private

  def create_book_obj(book_hash)
    publisher = book_hash['Publisher']
    cover_state = book_hash['Cover State']
    publish_date = book_hash['Publish Date']
    id = book_hash['ID']
    Book.new(publisher, cover_state, publish_date, id: id)
  end

  def create_game_obj(game_hash)
    multiplayer = game_hash['Multiplayer']
    last_played_at = game_hash['Last Played']
    publish_date = game_hash['Publish Date']
    id = game_hash['ID']
    Game.new(multiplayer, last_played_at, publish_date, id: id)
  end

  def create_movie_obj(movie_hash)
    silent = movie_hash['Is Silent']
    publish_date = movie_hash['Publish Date']
    id = movie_hash['ID']
    Movie.new(silent, publish_date, id: id)
  end

  def create_album_obj(album_hash)
    on_spotify = album_hash['On Spotify']
    publish_date = album_hash['Publish Date']
    id = album_hash['ID']
    MusicAlbum.new(on_spotify, publish_date, id: id)
  end
end
