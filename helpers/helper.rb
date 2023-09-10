module Helper
  def get_text(prompt)
    print prompt
    gets.chomp
  end

  def get_int(prompt)    
    num = 0
    loop do
      print prompt
      num = gets.chomp.to_i
      if num.positive?
        break
      else
        puts 'Input is invalid please enter an integer!'
      end
    end
    num
  end

  def display_array(arr, message)
    puts
    puts message
    arr.each_with_index do |item, index|
      puts "#{index + 1}) #{item}"
    end
    puts
  end

  def get_option(prompt, array)
    loop do
      print prompt
      
    end
  end
end