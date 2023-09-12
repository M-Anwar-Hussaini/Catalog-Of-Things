module Utilities
  
  def display_array(arr, title)
    puts
    puts title
    arr.each_with_index do |item, index|
      puts "#{index + 1}) #{item}"
    end
    puts 'The list is empty.' if arr.empty?
    puts
  end

  def get_text(prompt)
    print prompt
    gets.chomp
  end
end
