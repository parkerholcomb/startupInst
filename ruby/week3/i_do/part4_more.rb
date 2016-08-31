

# lets build out attendance to use hashes instead of array

# require 'pry'


# write leap year a few different ways

fibonnacci = [0,1,1,2,3,5,8,13]

20.times do
  fibonnacci[fibonnacci.length] = fibonnacci[fibonnacci.length-2] + fibonnacci[fibonnacci.length-1]
end

require "active_support/core_ext/integer/inflections"
fibonnacci.each_with_index do |number, i|
  puts "#{number} is the #{(i+1).ordinalize} number in sequence."
end

counter = 0
fibonnacci.each do |number|
  puts "#{number} is the #{counter+1}th number in sequence."
  counter += 1
end
