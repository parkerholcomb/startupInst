# https://docs.google.com/presentation/d/1YB6AhAL_c8CLK5Dc-QqCXMH1hX24RqYuCaKjs7up6Nk/edit#slide=id.p

########## Class ##########

  # a blueprint for structuring data, and how to interact with that data

  # there are a ton of included classes in Ruby core (e.g. String, Integer)

  > example = String.new("test")
  > example = "test"
  > example.chars
  > example.class
    => "String"

  ################
  # then there a some non-core, that we have to specifically require
  ################

  > require 'Date'

  # http://ruby-doc.org/stdlib-2.3.1/libdoc/date/rdoc/Date.html

  > tomorrow = Date.parse('2016-09-07')
  > today = Date.today
  > yesterday = Date.today - 1
  > next_year = today.next_year

  > tomorrow > today
  > yesterday.monday?

  class Date

    def initialize
      @year = 2016
      @month = 9
      @day = 6
    end

    def next_year
      Date.new(@year + 1, @month, @day)
    end

    def tomorrow
      Date.new(@year, @month, @day + 1)
    end


  end


  ################
  # then we can also create our own
  ################

  class Car
    # write all the logic about what defines a car (its fields/variables)
    # and how we interact with them
  end

  # truck = Car.new()

  ###

  class Person
    # what are attributes of a person?

  end



  #########

  question? -

  what are some of the attributes of

  a Car

    make
    model
    year
    color
    mpg

  a Person

    first_name
    last_name
    gender
    age
    hair_color
    weight
