def short_name(first_name, last_name)
  last_initial = last_name.chars.first
  first_name + " " + last_initial + "."\
end

def github_url(username)
  "https://github.com/parquar/#{username}"
end


def format_mobile(number)
  puts "the number was #{number}"
  formatted = "+1#{number.gsub(/^1/,"").gsub(/\D/,"")}"
  puts "now its #{formatted}"
  formatted
end

puts "what is your number?"
your_number = gets.chomp
for_twilio = format_mobile(your_number)
puts "Your number formatted for Twilio is #{for_twilio}"
