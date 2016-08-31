
########## Iterators ##########

  fibonnacci = [0,1,1,2,3,5,8,13]
  fibonnacci.each do |number|
    puts number
  end

  people = ['Gabe','Tamas','Charles','Emily','Jason','Monica', 'Santa Claus']

  people.each do |name|
    puts "#{name} was here on day one"
  end

  # to iterate through a hash

  infoHash = {
    'first_name': 'Parker',
    'last_name': 'Holcomb',
    'email': 'Holcomb',
  }

  infoHash.each do |k, v|
    puts "my #{k} is #{v}"
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

########## Map ##############
emails = []
attendance.each do |attendee|
  emails << attendee[:email]
end

attendance.map{|attendee| attendee[:email]}

########## Select ##############

  numbers = [1,2,3,4,5,6,7,8,9,10]

  # v0
  evens = []
  numbers.each do |number|
    evens << number if number.even?
  end

  # v1
  numbers.select do |number|
    number.even?
  end

  # v2 also written as
  numbers.select{ |number| number.even? }

  # v3 ALSOOOO written as
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
