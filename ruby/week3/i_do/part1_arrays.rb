# https://docs.google.com/presentation/d/1E1b18n_nAJ4OCRVbJzyHofNk-oEjRT69PP5XznIBupw/edit#slide=id.gac95142f7_0_0

########## Arrays ##########

  an ordered collection of objects

  set = String.new("test")
  set = "test"
  set = FixNum.new(2)
  set = 2

  set = Array.new(1,2,"five", "three sir", 3)
  set = [1,2,"five!", "8", nil, "jello"]

  set = [1,2,"five!", "8", nil, "jello"]
  cars = ["ford", "honda", "nissan", "cadillac", "toyota", "audi"]
  numbers = [1,2,3,4,5,6,7,8,9,10]

  set.first #set[0]
  set.last #set[set.length-1]




  ###############

  > fibonnacci = [0,1,1,2,3,5,8,13]
  > fibonnacci.length
  > fibonnacci[0]
  > fibonnacci[7] = 13
  > fibonnacci << 34
  > fibonnacci[fibonnacci.length] = fibonnacci[fibonnacci.length-2] + fibonnacci[fibonnacci.length-1]
  >

  # get first 20 elements of fib seq
  fibonnacci = [0,1]
  # while fibonnacci.length <= 20
  #   fibonnacci << fibonnacci[fibonnacci.length-2] + fibonnacci[fibonnacci.length-1]
  # end

  20.times do
    fibonnacci << fibonnacci[fibonnacci.length-2] + fibonnacci[fibonnacci.length-1]
  end

  puts fibonnacci

  ###############

  $ irb

  cars = ["ford", "honda", "nissan", "cadillac", "toyota", "audi"]

  > cars.length
  > cars.empty?
  > cars.include?(“mercedes”)
  > cars.sort
  > cars.shuffle
  > cars.rotate
  > cars.reverse
  > cars.join(“ “)

  # difference b/t !

  > cars.sort
  > cars

  #versus

  > cars.sort!
  > cars

  # to remove an element from an array...

  cars.pop # removes the last element in the array
  cars.shift # removes the first element in the array
  cars.delete(“nissan”) # finds the element and deletes it - if more than one deletes all
  cars.delete_at(1) # finds the element at that index and deletes it.
