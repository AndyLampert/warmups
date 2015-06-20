puts "What is your guess?"

def random_str
  puts ["Too low. Try again.", "Too high. Try again.", "You got it in 3 tries!"].sample
end

input = gets.chomp
tries = 1

3.times do
  if input.to_i == 5
    puts random_str
    tries += 1
    input = gets.chomp
    puts "What is your guess?"
  end
end