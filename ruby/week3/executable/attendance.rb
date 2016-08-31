require 'pry'

attendance = []
continue = 'y'

puts "Let's take attendance. \nPlease enter the first name's of everyone here.\n"

while continue == 'y'
  puts "enter the name of someone here"

  name = gets.chomp
  binding.pry
  attendance << name
  puts "are there more people here? (y/n)"
  continue = gets.chomp
end

puts "\nThere are #{attendance.count} people here today"
puts "Their names are #{attendance.join(", ")}\n"
