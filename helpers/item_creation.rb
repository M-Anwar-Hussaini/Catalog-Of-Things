module ItemCreation
  def create_book
    publisher = get_text('Please enter the book\'s publisher: ')
    cover_state = get_text("Please enter book's cover state: ")
    publish_date = get_text("Please enter book's publish date in the format of [yyyy-mm-dd]: ")
    Book.new(publisher, cover_state, publish_date)
  end

  def create_game
    multiplayer = get_text('Is the game multiplayer [Y/N]: ').downcase == 'y'
    last_played_at = get_text('Please enter the last played date of the game in this format. [yyyy-mm-dd]: ')
    publish_date = get_text("Please enter game's publish date in the format of [yyyy-mm-dd]: ")
    Game.new(multiplayer, last_played_at, publish_date)
  end

  def create_movie
    silent = get_text('Is the movie silent [Y/N]: ').downcase == 'y'
    publish_date = get_text("Please enter movie's publish date in the format of [yyyy-mm-dd]: ")
    Movie.new(silent, publish_date)
  end

  def create_music_album
    on_spotify = get_text('Is the album on Spotify [Y/N]: ').downcase == 'y'
    publish_date = get_text("Please enter album's publish date in the format of [yyyy-mm-dd]: ")
    MusicAlbum.new(on_spotify, publish_date)
  end
end
