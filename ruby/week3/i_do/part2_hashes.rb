
########## Hashes ##########

  hash =
    {
      "definition": 'collection of key/ value pairs',
      "ordered": false,
      "benefit": "Searchable by key",
      "summary": "Key. Value. Pair."
    }

  > hash['benefit']
  > hash['definition']

  ### arrays are ordered, but could be sorted to mess you up

  infoArray =
  [
    'Parker',
    'Holcomb',
    'parker@gmail.com'
  ]

  > "My name is #{infoArray[0]} + #{infoArray[1]}. Contact me at #{infoArray[2]}"


  ### hashes allow you to write look ups that make much more sense

  infoHash = {
    'first_name': 'Parker',
    'last_name': 'Holcomb',
    'email': 'Holcomb',
  }

  > "My name is #{infoHash['first_name']} + #{infoHash['last_name']}. Contact me at #{infoHash['email']}"

  ### also way more sense to update

  > info['email'] = 'parker@all.college'

  # can get all the keys or values in your hash

  > infoHash.keys
  > infoHash.values
