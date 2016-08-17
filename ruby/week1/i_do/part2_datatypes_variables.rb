
########## Some Standard Classes ##########

# class - collection of code (that can be instantiated)
# object - instance of a class

  # Primitive Data Types

  1. "String"

    a collection of characters enclosed by quotes

    "this is a string"
    'so is this'
    this is not

    > "this is a string".class
    => String

  2. :symbol

    :wordWithNoSpacesAndLeadingColon
    :camelCase
    :with_underscore

  3. Integer - whole number

    > 3.class
      => Fixnum

  4. Float - decimal

    > (1.245).class
    => Float

  5. Boolean
    # FalseClass < Boolean
    # TrueClass < Boolean

    true or false

    > "a" == "b"
    => false
    > result = "a" == "b"
    => false
    > result = false
    => true

  # Complex Objects

  6. Date

    # A complex ruby object

    > require 'date'
    => true
    > Date.today
    => #<Date: 2016-08-16 ((2457617j,0s,0n),+0s,2299161j)>


########## Variables - the simplest data store ##########

  variable has two things
    1) name
    2) value

  valid variable names
    - my_name
    - today = Date.today
    - no_spaces
    - "noQuotes" = "not a thing"
    - not_a_reserve_word

  valid values
   - see data types above :)

  *nil
    - nil denotes absence of a value

  > first_name = "Parker"
   => "Parker"
  > last_name = "Holcomb"
   => "Holcomb"
  > first_name
    => "Parker"
  > first_name + last_name
   => "ParkerHolcomb"

 Assignment Operators
  =
  +=
  -=
