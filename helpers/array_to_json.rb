require 'json'

module ArrayToJson
  def authors_to_json(authors)
    result = authors.map do |author|
      create_author_hash(author)
    end
    JSON.pretty_generate(result)
  end
end
