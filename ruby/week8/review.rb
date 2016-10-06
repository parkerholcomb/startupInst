# learned

# loops
  repeating a section (block) of code
  "multiple times"

  # while
  counter = 0
  while (counter < 10)
    puts counter
    counter += 1
  end


  # until
  counter = 0
  until counter == 10
    puts counter
    counter += 1
  end

  # 10.times
  10.times do
    puts "Parker's Cool"
  end

  cars = ['BMW','Toyota', "Benz", "Tesla"]
  i = 0
  current_car = ''

  until (current_car == 'Benz')
    current_car = cars[i]
    puts "current_car is #{current_car} at position #{i}"
    i += 1
  end


  cars = ['BMW','Toyota', "Benz", "Tesla"]

  cars.each do |car|
    puts "I'm driving a #{car}"
  end
  # iterators
    # each


# data types
  # string
    - collection of chars contained inside "" or ''

    def launch_edit_modal(object)
      "<a class='edit-modal' data-id='#{object.id}' data-table='#{table_name(object)}'>Edit</a>".html_safe
    end

    example = "Hello"
    "The string was #{example}"
    'The string was #{example}'

  # int
    a whole number
  # array
    ordered gathering (or collection or group) of objects
    cars = ['BMW','Toyota', "Benz", "Tesla"]


    cars.shuffle
    cars.shuffle!
    cars = cars.shuffle
    cars.pop

    cars.shift
    cars.length
    cars.first
    cars.reverse
    cars.reverse
    cars.include?(object)
    cars.push

    cookies = ['M&M','SnickerDoodle', "Sugar", "Peanut Butter"]

    up_cookies = []
    cookies.each {|cookie| up_cookies << cookie.upcase}
    cookies.map {|cookie| cookie.upcase}

    s_cookies = cookies.select{|cookie| cookie.chars.first.downcase == 's'}


    cookies.join(", ")

    cookies.delete(elem)

    cookies.delete_at(index)
    cookies[index].delete

    cookies << 'Oatmeal Raisan'

    cookies.drop(count)

  # hash
    # {key: value}
    # :key => 'value'
    person = {first_name: 'Joe', last_name: 'Smith', :email => 'joe@mail.com'}

    person[:first_name]
    person.keys
    person.values

  # symbol
    collection of chars with no spaces & a :

  # booleans
    true or false

# environments
  # console
     - where you can execute ruby code
     >
     $ irb

  # terminal
    - navigate directories
    $ cd ~/users/parkerholcomb
    $ cd ..
    $ ruby hello_world.rb
    $ python hello_world.py
    $ git checkout master

  bash_profile
    ~/.bash_profile

    to show all files

    ls -a

  # methods
    # formula that takes inputs called parameters
    # and spits out a results called a return value

    # naming/defining method
    def date_string(month, day, year)
      answer = "#{year}-#{month}-#{day}"
      return answer # returns are implied
    end

    def date_string(month, day, year)
      puts year
      "#{year}-#{month}-#{day}"
    end

    # valid names for methods
      start with lowercase
      no spaces
      thisStyleCalled #camelCase
      is_this_valid?
      # WhyIsThisWrong -

    # return values

    # local scope
    # calling methods
    date_string(10,4,2016)

# still review


# concepts/tools
  # executing scripts "ruby hello_world.rb" vs in console
  # binding.pry
    + 1 from GA
  # git
    + 1 from EE
    + 1 from MK
    # repository
    # commits
    # branches


# control statements
  # if
  # else



# Class
  # defining a class

  class Person

    attr_accessor :first, :last, :email

    def initialize(options = {})
      @first = options[:first]
      @last = options[:last]
      @email = options[:email]
    end

  end

  class Car
    # @@description = "Four-ish wheels and motor"
    #
    # def self.description
    #   @@description
    # end
    # attr_accessor :make, :model, :year
    # attr_reader :model

    def initialize(options = {})
      @make = options[:make]
      @model = options[:model]
      @year = options[:year]
    end

    def summary
      "#{@make} #{@model} from #{@year}"
    end

  end

  options = {
    make: "Tesla",
    model: 'ModelX',
    year: 2016,
    color: "blue"
  }

  weekday = Car.new(options)

  options[:model] = "Model S"
  sunday = Car.new(options)

  puts "My sunday car is a #{sunday.summary}"

  # initializing a class
  + 1 from EE

  # variables
    # instance variables
    # local variables
    # class variables
  # methods
    # instance methods
    # class methods

  # inheritance
    # subclass
    # sharing/overriding methods
  class Person
    def initialize(options = {})
      @first = options[:first]
      @last = options[:last]
    end

    def intro_yourself
      "Hi I am #{full_name}"
    end

    def full_name
      "#{@first} #{@last}"
    end
  end

  class Dad < Person
    def intro_yourself
      "Hi I am Dad that is named #{full_name}"
    end
  end

  class Mom < Person
    def intro_yourself
      "Hi I am Mom that is named #{full_name}"
    end
  end

  parent1 = Person.new({first: "Sue", last: "Holcomb"})
  parent1.intro_yourself

  parent2 = Dad.new({first: "Brad", last: "Holcomb"})
  parent2.intro_yourself

# organization
  + JJ
  # organization in files
  # require 'Date'
  # require 'open-uri'
