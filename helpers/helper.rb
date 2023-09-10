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

  def get_option(prompt, _array)
    loop do
      print prompt
    end
  end
end
