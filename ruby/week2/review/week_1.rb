# def convert (degrees)
#   5 * (degrees-32)/5
# end
#
# puts "If it's 32 degrees farhenheit, then it's #{convert(32)} degrees C"

def year_born(your_age)
  Time.now.year - your_age.to_i
end

puts "What is your name?"
name = gets.chomp

puts "What is your age?"
your_age = gets.chomp

puts "#{name} was born in #{year_born(your_age)}."

#example idea
# what to do if you don't enter a string
