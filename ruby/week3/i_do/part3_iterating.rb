
########## Iterators ##########

  fibonnacci = [0,1,1,2,3,5,8,13]
  fibonnacci.each do |number|
    puts number
  end

  people = ['Gabe','Tamas','Charles','Emily','Jason','Monica', 'Santa Claus']
  people.each do |name|
    "#{name} was here on day one"
  end

  # to iterate through a hash

  infoHash = {
    'first_name': 'Parker',
    'last_name': 'Holcomb',
    'email': 'Holcomb',
  }

  infoHash.each do |key, value|
    puts "my #{key} is #{value}"
  end


#### Times, and block notation intro #########

  10.times do
    puts "hey"
  end
  # is the same as
  10.times{ puts "hey" }

  people.each do |name|
    "#{name} was here on day one"
  end
  # is the same as
  people.each do { |name| puts "hey it's #{name}" }


########## Select ##############

  numbers = [1,2,3,4,5,6,7,8,9,10]

  numbers.select do |number|
    number.even?
  end

  # also written as
  numbers.select{ |number| number.even? }

  # ALSOOOO written as
  numbers.select(&:even?)

########## Ranges ##############

  1...10
  1..10

  (1..10).select{ |number| number.even? }

########## Enumerables ##############

numbers = [0, 5, 2, 9, 7, 6, 8, 3, 1, 4]

numbers.sort
numbers.inject(:+)
numbers.find { |number| number == 1 }
numbers.count
numbers.max
