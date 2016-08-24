

# Make a ruby program that uses puts to print the following text:
#
puts "You’re a traveler on a long journey. After many miles,
you come to a fork in the road. To the North is a small village.
To the East is dark cave. Which way do you go? North or East?"

direction = gets.chomp

case direction
when 'North'
  puts "good idea"
when "South"
  puts "you chose south"
when "SSW"
  puts "SSW"
else
  puts "if didn't evaluate"
end

if direction == 'North'
  puts "good idea"
elsif direction == 'East'
  puts 'another'
elsif direction == 'SouthEast'
  puts 'another'
elsif direction == 'SouthWest'
  puts "soetmhing"
elsif direction == 'NNW'
  puts "go north"
else
  puts "choose North or East"
end



# Then use gets to store the user’s answer in a variable called direction.
#
# Then use the direction variable in an if/else conditional:
# What happens when the user chooses North?
# What happens when the user chooses East?
