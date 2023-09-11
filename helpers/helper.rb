module Helper
  def get_text(prompt)
    print prompt
    gets.chomp
  end

  def display_array(arr, title)
    puts
    puts title
    arr.each_with_index do |item, index|
      puts "#{index + 1}) #{item}"
    end
    puts
  end

  def get_array_index(array, title, prompt)
    display_array(array, title)
    print prompt
    gets.chomp.to_i - 1
  end

  def create_folder(folder_name)
    Dir.mkdir(folder_name) unless File.directory?(folder_name)
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
end
