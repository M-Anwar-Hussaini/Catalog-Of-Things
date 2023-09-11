require 'json'
require_relative '../src/book'
require_relative '../src/game'
require_relative '../src/movie'
require_relative '../src/music_album'
require_relative '../src/author'
require_relative '../src/genre'
require_relative '../src/label'
require_relative '../src/source'

module Reader
  def read_file(path)
    JSON.parse(File.read(path))
  end

  def items_to_array(arr)
    arr.map do |item|
      case item
      when Book then create_book_obj(item)
      when Game then create_game_obj(item)
      when Movie then create_movie_obj(item)
      when MusicAlbum then create_album_obj(item)
      end
    end
  end

  def authors_to_array(authors)
    authors.map do |author|
      first_name = author['First Name']
      last_name = author['Last Name']
      id = author['ID']
      Author.new(first_name, last_name, id: id)
    end
  end

  def genres_to_array(genres)
    genres.map do |genre|
      name = genre['Name']
      id = genre['ID']
      Genre.new(name, id: id)
    end
  end

  def labels_to_array(labels)
    labels.map do |label|
      name = label['Name']
      id = label['ID']
      Label.new(name, id: id)
    end
  end

  def sources_to_array(sources)
    sources.map do |source|
      name = source['Name']
      id = source['ID']
      Label.new(name, id: id)
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
