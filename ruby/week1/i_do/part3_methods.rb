
########## Methods ##########

  takes inputs/parameters
  does some stuff
  returns something

  1. define a method

    def short_name(first_name, last_name)
      last_initial = last_name.chars.first
      first_name + " " + last_initial + "."
    end

    returns are implied in ruby

    def github_url(username)
      "https://github.com/parquar/#{username}"
    end

  2. call/use a method

  > github_url("parquar")
  => "https://github.com/parquar/parquar"
  > short_name("Parker", "Holcomb")
  => "Parker H."


########## Some Ruby methods ##########

  def puts a_string
    # prints the value of the parameter to the console logs
  end

  # this is already written for us, and is one of o-so-many included in Ruby


########## Getting User Input ##########

  your_number = gets
  for_twilio = format_mobile(your_number)
  puts "Your number formatted for Twilio is #{for_twilio}"
