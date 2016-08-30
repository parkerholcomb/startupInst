# Write a Deaf Grandma program.
# Whatever you say to grandma(user input) she should respond with
#   HUH?!, SPEAK UP SONNY!, unless you shout it(type in all CAPS).
#
# If you shout, she can hear you and yells back NO, NOT SINCE 1938!
#
# Grandma should shout a different year each time; random between 1930 to 1980.
#
# You can’t stop talking to grandma until you shout BYE.

default = "HUH?!, SPEAK UP SONNY!"

def grandmas_response(question)
  if question.upcase == question
    puts "NO, NOT SINCE #{rand(1930..1980)}!"
  else
    puts "HUH?!, SPEAK UP SONNY!"
  end
end

keep_talking = true

while keep_talking

  puts "\nWhat would you like to say to grandma?"
  input = gets.chomp

  if input == "BYE"
    keep_talking = false
  else
    grandmas_response(input)
  end

end
