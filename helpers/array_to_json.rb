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
end
