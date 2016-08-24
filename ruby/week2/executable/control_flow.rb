
def play_game

  hidden = rand(10) # assign a random number to a variable named hidden

  puts "guess a number between 0 and 9" #prompt user for a response

  input = gets.chomp #assign user's response to a variable called input

  input = input.to_i #gets returns a string, we need to turn input into an integer

  if input == hidden
    puts "Winner winner!"
  elsif input < hidden
    puts "You were too low. The right number was #{hidden}"
  elsif input > hidden
    puts "You were too high."
    puts "The hidden number was #{hidden}"
  end

end

continue = 'y'
max = 2
count = 0

while continue == 'y' && count < max
  play_game
  puts "would you like to play again? (y/n)"
  continue = gets.chomp
  count += 1
end

if continue == 'n'
  puts "thanks for playing!"
elsif count == max
  puts "you reached the max"
end
