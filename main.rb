require_relative './helpers/app'
require_relative './helpers/helper'

class Main
  include Helper
  attr_accessor :app
  def initialize
    @app = Application.new
  end

  def display_options
    puts 'Available Operations: '
    puts '1 - To create an Author.'
    puts '2 - To create a Genre.'
    puts '3 - To create a Label.'
    puts '4 - To create a Source.'
    puts '5 - To create an Item.'
    puts '6 - To list all Authors.'
    puts '7 - To list all Genres.'
    puts '8 - To list all Labels.'
    puts '9 - To list all Sources.'
    puts '10 - To List all Items.'
    puts '0 - to quit the application.'
    print 'Please select a number to do its operation. [Integer]: '
  end


  def start
    loop do
      display_options

      number = gets.chomp.to_i
      if number.zero?
        puts "\nThanks for using this app.\nGood luck!!"
        break
      end

      case number
      when 1 then app.add_author
      when 2 then app.add_genre
      when 3 then app.add_label
      when 4 then app.add_source
      when 5 then app.add_item
      when 6 then display_array(app.authors, 'List of authors: ')
      when 7 then display_array(app.genres, 'List of genres: ')
      when 8 then display_array(app.labels, 'List of labels: ')
      when 9 then display_array(app.sources, 'List of sources: ')
      when 10 then display_array(app.items, 'List of items: ')
      end
    end
  end
end

Main.new.start