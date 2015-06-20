def ask_number
  puts "What is your guess?"
end

ask_number
input = gets.chomp
tries = 1

3.times do
  if (input == 5 and tries < 3)
    if input.to_i < 5
      puts "Too low. Try again."
      tries += 1
      ask_number
      input = gets.chomp
    elsif input.to_i > 5
      puts "Too high. Try again."
      tries += 1
      ask_number
      input = gets.chomp
    elsif (tries == 3 && input.to_i == 5)
      puts "You got it in 3 tries!"
      input = gets.chomp
    end
  end
end

# while input !=5
#   puts "What is your guess?"
#   if input < 5
#     puts "Too low. Try again."
#     tries += 1
#   elsif input > 5
#     puts "Too high. Try again."
#     tries += 1
#   elsif (tries == 3 && input == 5)
#     puts "You got it in 3 tries!"
#   end
# end
