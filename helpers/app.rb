require_relative '../src/author'
require_relative '../src/genre'
require_relative '../src/label'
require_relative '../src/source'
require_relative '../src/book'
require_relative '../src/game'
require_relative '../src/movie'
require_relative '../src/music_album'
require_relative 'helper'
require_relative 'creations'

class Application
  include Helper
  include Elements
  attr_reader :authors, :genres, :labels, :sources, :items

  def initialize
    @authors = []
    @genres = []
    @labels = []
    @sources = []
    @items = []
  end

  def add_author
    first_name = get_text('Please enter author\'s first name: ')
    last_name = get_text('Please enter author\'s last name: ')
    authors << Author.new(first_name, last_name)
    puts 'The author was successfully added!'
    puts
  end

  def add_genre
    name = get_text('Please enter genre\'s name: ')
    genres << Genre.new(name)
    puts 'The genre was successfully added!'
    puts
  end

  def add_label
    name = get_text('Please enter label\'s name: ')
    labels << Label.new(name)
    puts 'The label was successfully added!'
    puts
  end

  def add_source
    name = get_text('Please enter source\'s name: ')
    sources << Source.new(name)
    puts 'The source was successfully added!'
    puts
  end

  def add_item
    message = []
    message << 'The author list is empty!' if authors.empty?
    message << 'The genre list is empty!' if genres.empty?
    message << 'The label list is empty!' if labels.empty?
    message << 'The source list is empty!' if sources.empty?

    if message.empty?
      author_index = get_array_index(authors, 'List of authors: ', 'Please select the number of an author: ')
      genre_index = get_array_index(genres, 'List of genres: ', 'Please select the number of a genre: ')
      label_index = get_array_index(labels, 'List of labels: ', 'Please select the number of a label: ')
      source_index = get_array_index(sources, 'List of sources: ', 'Please select the number of a source: ')

      option = choose_item_option

      item = create_item(option)
      authors[author_index].add_item(item)
      genres[genre_index].add_item(item)
      labels[label_index].add_item(item)
      sources[source_index].add_item(item)

      items << item
    else
      display_array(message, "New item can't be added because: ")
    end
  end
end
