require_relative '../src/author'
require_relative '../src/genre'
require_relative '../src/label'
require_relative '../src/source'
require_relative '../src/book'
require_relative '../src/game'
require_relative '../src/movie'
require_relative '../src/music_album'
require_relative 'helper'

class Application
  include Helper
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
    puts "The author was successfully added!"
    puts
  end

  def add_genre
    name = get_text('Please enter genre\'s name: ')
    genres << Genre.new(name)
    puts "The genre was successfully added!"
    puts
  end

  def add_label
    name = get_text('Please enter label\'s name: ')
    labels << Label.new(name)
    puts "The label was successfully added!"
    puts
  end

  def add_source
    name = get_text('Please enter source\'s name: ')
    sources << Source.new(name)
    puts "The source was successfully added!"
    puts
  end

  def display_items

  end

  def add_item
    message = []
    message << 'The author list is empty!' if authors.empty?
    message << 'The genre list is empty!' if genres.empty?
    message << 'The label list is empty!' if labels.empty?
    message << 'The source list is empty!' if sources.empty?

    unless message.empty?
      display_array(message, "New item can't be added because: ")
    else
      display_array(authors, 'List of authors:')
      print 'Please select the number of an author: '
      author_index = gets.chomp.to_i - 1
      author = authors[author_index]

      display_array(genres, 'List of genres:')
      print 'Please select the number of a genre: '
      genre_index = gets.chomp.to_i - 1

      
      display_array(labels, 'List of labels:')
      print 'Please select the number of a label: '
      label_index = gets.chomp.to_i - 1

      display_array(sources, 'List of sources:')
      print 'Please select the number of a source: '
      source_index = gets.chomp.to_i - 1

      puts
      puts 'Which item do you want to create?'
      puts '1 - To create a book.'
      puts '2 - To create a game.'
      puts '3 - To create a movie.'
      puts '4 - To create a music album.'
      print 'Select an option [Enter integer]: '
      
      option = gets.chomp.to_i
      item = get_item(option)
      authors[author_index].add_item(item)
      genres[genre_index].add_item(item)
      labels[label_index].add_item(item)
      sources[source_index].add_item(item)

      items << item
    end
  end

  def get_item(option)
    case option
    when 1 then get_book
    when 2 then get_game
    when 3 then get_movie
    when 4 then get_music_album
    end
  end

  def get_book
    publisher = get_text('Please enter the book\'s publisher: ')
    cover_state = get_text("Please enter book's cover state: ")
    publish_date = get_text("Please enter book's publish date in the format of [yyyy-mm-dd]: ")
    Book.new(publisher, cover_state, publish_date)
  end

  def get_game
    multiplayer = get_text("Is the game multiplayer [Y/N]: ").downcase == 'y'
    last_played_at = get_text("Please enter the last played date of the game in this format. [yyyy-mm-dd]: ")
    publish_date = get_text("Please enter game's publish date in the format of [yyyy-mm-dd]: ")
    Game.new(multiplayer, last_played_at, publish_date)
  end
  
  def get_movie
    silent = get_text("Is the movie silent [Y/N]: ").downcase == 'y'
    publish_date = get_text("Please enter movie's publish date in the format of [yyyy-mm-dd]: ")
    Movie.new(silent, publish_date)
  end

  def get_music_album
    on_spotify = get_text("Is the album on Apotify [Y/N]: ").downcase == 'y'
    publish_date = get_text("Please enter album's publish date in the format of [yyyy-mm-dd]: ")
    MusicAlbum.new(on_spotify, publish_date)
  end

end