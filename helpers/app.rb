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
require_relative 'json'
require_relative 'reader'
require_relative 'paths'

class Application
  include Helper
  include Elements
  include Json
  include Reader
  include Paths
  attr_reader :authors, :genres, :labels, :sources, :items

  def initialize
    @authors = []
    @genres = []
    @labels = []
    @sources = []
    @items = []
    create_files_folders
    run
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
      puts 'Item was add successfully'
      puts
    else
      display_array(message, "New item can't be added because: ")
    end
  end

  def run
    loop do
      display_options
      number = gets.chomp.to_i
      case number
      when 1 then add_author
      when 2 then add_genre
      when 3 then add_label
      when 4 then add_source
      when 5 then add_item
      when 6 then display_array(authors, 'List of authors: ')
      when 7 then display_array(genres, 'List of genres: ')
      when 8 then display_array(labels, 'List of labels: ')
      when 9 then display_array(sources, 'List of sources: ')
      when 10 then display_array(items, 'List of items: ')
      when 0
        quit_app
        puts "\nThanks for using this app.\nGood luck!!"
        break
      end
    end
  end

  def load_data; end

  def create_files_folders
    create_folder('json')
    create_default_file(AUTHORS_PATH)
    create_default_file(GENRES_PATH)
    create_default_file(LABELS_PATH)
    create_default_file(SOURCES_PATH)
    create_default_file(ITEMS_PATH)
  end

  def quit_app
    File.write('./json/Authors.json', authors_to_json(authors))
    File.write('./json/Genres.json', genres_to_json(genres))
    File.write('./json/Labels.json', labels_to_json(labels))
    File.write('./json/Sources.json', sources_to_json(sources))
    File.write('./json/Items.json', items_to_json(items))
  end
end
