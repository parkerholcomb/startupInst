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

puts "#{leap_years}"
