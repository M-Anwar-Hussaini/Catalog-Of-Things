require 'json'

module ArrayToJson
  def authors_to_json(authors)
    result = authors.map do |author|
      create_author_hash(author)
    end
    JSON.pretty_generate(result)
  end

  def genres_to_json(genres)
    result = genres.map do |genre|
      create_genre_hash(genre)
    end
    JSON.pretty_generate(result)
  end

  
  def labels_to_json(labels)
    result = labels.map do |label|
      create_label_hash(label)
    end
    JSON.pretty_generate(result)
  end

  
  def sources_to_json(sources)
    result = sources.map do |source|
      create_source_hash(source)
    end
    JSON.pretty_generate(result)
  end

  def items_to_json(items)
    result = items.map do |item|
      case item
      when Book then create_book_hash(item)
      when Game then create_game_hash(item)
      when Movie then create_movie_hash(item)
      when MusicAlbum then create_album_hash(item)
      end
    end
    JSON.pretty_generate(result)
  end

  private

  def create_author_hash(author)
    {
      'Type' => author.class,
      'ID' => author.id,
      'First Name' => author.first_name,
      'Last Name' => author.last_name
    }
  end

  def create_genre_hash(genre)
    {
      'Type' => genre.class,
      'Name' => genre.name,
      'ID' => genre.id
    }
  end

  def create_label_hash(label)
    {
      'Type' => label.class,
      'Name' => label.name,
      'ID' => label.id
    }
  end

  def create_source_hash(source)
    {
      'Type' => source.class,
      'Name' => source.name,
      'ID' => source.id
    }
  end

  def create_book_hash(book)
    {
      'Type' => book.class,
      'ID' => book.id,
      'Publisher' => book.publisher,
      'Cover State' => book.cover_state,
      'Publish Date' => book.publish_date,
      'Archiveable' => book.can_be_archieved?
    }
  end

  
  def create_game_hash(game)
    {
      'Type' => game.class,
      'ID' => game.id,
      'Multiplayer' => game.multiplayer,
      'Last Played' => game.last_played_at,
      'Publish Date' => game.publish_date,
      'Archiveable' => game.can_be_archieved?
    }
  end
end
