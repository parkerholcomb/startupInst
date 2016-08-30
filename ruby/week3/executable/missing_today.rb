attendance = []
continue = 'y'

puts "Let's take attendance. Please enter the first name's of everyone here.\n"

while continue == 'y'
  puts "enter the name of someone here"
  name = gets.chomp
  attendance << name
  puts "are there more people here? (y/n)"
  continue = gets.chomp
end

puts "\nThere are #{attendance.count} people here today"
puts "Their names are #{attendance.join(", ")}\n"

############

everyone = ['Gabe','Tamas','Charles','Emily','Jason','Monica', 'Santa Claus']
missing = []

everyone.each do |name|
  if !attendance.include?(name)
    missing.push(name)
    # missing << name
  end
end

puts "\nlooks like we're missing #{missing.join(", ")}"
