require_relative '../src/author'
require_relative '../src/genre'
require_relative '../src/label'
require_relative '../src/source'
require_relative '../src/book'
require_relative '../src/game'
require_relative '../src/movie'
require_relative '../src/music_album'
require_relative 'utilities'
require_relative 'item_creation'
require_relative 'array_to_json'
require_relative 'file_to_array'
require_relative 'file_manipulation'
require_relative 'paths'

class Application
  include ArrayToJson
  include FileToArray
  include ItemCreation
  include Utilities
  include Paths
  include FileManipulation
  attr_reader :authors, :genres, :labels, :sources, :items

  def initialize
    @authors = File.exist?(AUTHORS_PATH) ? authors_to_array(AUTHORS_PATH) : []
    @genres = File.exist?(GENRES_PATH) ? genres_to_array(GENRES_PATH) : []
    @labels = File.exist?(LABELS_PATH) ? labels_to_array(LABELS_PATH) : []
    @sources = File.exist?(SOURCES_PATH) ? sources_to_array(SOURCES_PATH) : []
    @items = File.exist?(ITEMS_PATH) ? items_to_array(ITEMS_PATH) : []
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
        save_all
        puts "\nThanks for using this app.\nGood luck!!"
        break
      end
    end
  end

  def save_all
    save_file(AUTHORS_PATH, authors_to_json(authors))
    save_file(GENRES_PATH, genres_to_json(genres))
    save_file(LABELS_PATH, labels_to_json(labels))
    save_file(SOURCES_PATH, sources_to_json(sources))
    save_file(ITEMS_PATH, items_to_json(items))
  end
end
