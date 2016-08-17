def short_name(first_name, last_name)
  last_initial = last_name.chars.first
  first_name + " " + last_initial + "."\
end

def github_url(username)
  "https://github.com/parquar/#{username}"
end

def format_mobile(number)
  # puts "the number was #{number}"
  # puts "now its #{formatted}"
  # result
  "+1#{number.gsub(/^1/,"").gsub(/\D/,"")}"
end

puts "what is your number?"
input = gets.chomp
puts "you entered #{input}"
for_twilio = format_mobile(input)
puts "Your number formatted for Twilio is #{for_twilio}"
