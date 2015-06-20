def ask_guess
  puts 'What is your guess? '
  guess = gets.chomp.to_i
  @tries += 1

  if guess == @number
    puts "you got it!"
  else
    high_or_low = guess > @number ? 'High' : 'Low'
    puts "too #{high_or_low}!"
    ask_guess
  end
end

@number = rand(100) + 1
@tries = 0
ask_guess

puts formatter % {

  }