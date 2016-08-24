# Write a program that asks for a name and an age.
# Have it output something like “Bob was born in 1985”

puts "whats your name"
name = gets.chomp

puts "whats your age?"
age = gets.chomp.to_i

puts "#{name} was born in #{Time.now.year - age}"
