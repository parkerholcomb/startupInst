# example from last week

# Write a program which will ask for a starting year and an ending year,
# and then puts all of the leap years between them
# (and including them, if they are also leap years).

# Leap years are years divisible by four (like 1984 and 2004).
# However, years divisible by 100 are not leap years (such as 1800 and 1900)
# unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years).

puts "start year"
starting = gets.chomp.to_i

puts "end year"
ending = gets.chomp.to_i

def leap_years_v1(starting, ending)
  leap_years = []
  (starting..ending).each do |yr|
    if yr % 400 == 0
      leap_years << yr
    elsif yr % 100 == 0
      puts "nada"
    elsif yr % 4 == 0
      leap_years << yr
    end
  end
  leap_years
end

require 'date'
require 'pry'
# http://ruby-doc.org/stdlib-2.3.1/libdoc/date/rdoc/Date.html#method-i-leap-3F

def leap_years_v2(starting, ending)
  (starting..ending).select do |year|
    # binding.pry
    Date.new(year).leap?
  end
end

puts "version 1: #{leap_years_v1(starting, ending)}"

puts "version 2: #{leap_years_v2(starting, ending)}"
