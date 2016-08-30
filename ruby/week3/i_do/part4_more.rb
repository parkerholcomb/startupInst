
# can have an array of hashes

# lets build out attendance to use hashes instead of array

# require 'pry'


# write leap year a few different ways

fibonnacci = [0,1,1,2,3,5,8,13]

20.times do
  fibonnacci[fibonnacci.length] = fibonnacci[fibonnacci.length-2] + fibonnacci[fibonnacci.length-1]
end

fibonnacci.each_with_index do |number, i|
  puts "#{number} is the #{i+1} number in sequence."
end
