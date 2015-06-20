def ask_guess
  puts 'What is your guess? '
  guess = gets.chomp.to_i
  @tries += 1

  if guess == @number
    puts "you got it!"
  else
    if guess > @number
      puts 'too high!'
    elsif guess < @number
      puts 'too low!'
    end
    ask_guess
  end
end

@number = rand(100) + 1
@tries = 0
ask_guess

# @ keeps variable's value between method calls
# we could do it without the @ if we declared the
# variable before the method call, but the actual
# program is at the bottom (better organization)
