# Create a method that takes a celsius argument and convert it
# from celsius to fahrenheit.

def to_farenheit(celsius)
  (9/5) * celsius + 32
end

puts 'give me celsius'
celsius = gets.chomp.to_i
puts "that's #{to_farenheit(celsius)} in fahrenheit"
