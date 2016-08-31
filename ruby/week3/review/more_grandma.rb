# Add on to the above. Grandma really loves your company and doesn’t want you
# to go unless you shout BYE three times in a row.
# So if you say BYE twice and then something else you have to say BYE three times again.

require 'pry'

default = "HUH?!, SPEAK UP SONNY!"

def grandmas_response(question)
  if question.upcase == question
    puts "NO, NOT SINCE #{rand(1930..1980)}!"
  else
    puts "HUH?!, SPEAK UP SONNY!"
  end
end

byes = 0

while byes < 3
  puts "\nWhat would you like to say to grandma?"
  input = gets.chomp
  if input == "BYE"
    byes += 1
    # puts "count of byes: #{byes}"
  else
    byes = 0
    grandmas_response(input)
  end

end
