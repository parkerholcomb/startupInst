
########## Hashes ##########

  hash =
    {
      :definition => 'collection of key/ value pairs',
      :ordered => false,
      :benefit => "Searchable by key",
      :summary => "Key. Value. Pair."
    }

  > hash['benefit']
  > hash['definition']

  ### arrays are ordered, but could be sorted to mess you up

  # infoArray =
  # [
  #   'Parker', #0
  #   'Holcomb', #1
  #   'parker@gmail.com' #2
  # ]
  #

  > "My name is #{infoArray[0]} #{infoArray[1]}. Contact me at #{infoArray[2]}"


  ### hashes allow you to write look ups that make much more sense

  attendance = []

  parker = {
    'first_name': 'Parker',
    'last_name': 'Holcomb',
    'email': 'parker@gmail',
  }

  attendance << parker

  gabe = {
    'first_name': 'Gabe',
    'last_name': 'Appleton',
    'email': 'gabe@gmail'
  }

  attendance << gabe

  charlie = {
    'first_name': 'charlie',
    'last_name': 'ferguson',
    'email': 'charlies@gmail'
  }

  attendance << charlie

  emails = []
  attendance.each do |attendee|
    emails << attendee[:email]
  end

  attendance.map{|attendee| attendee[:email]}






  > "My name is #{infoHash[:first_name]} #{infoHash[:last_name]}. Contact me at #{infoHash[:email]}"



  ### also way more sense to update

  > info['email'] = 'parker@all.college'

  # can get all the keys or values in your hash

  > infoHash.keys
  > infoHash.values
