# https://docs.google.com/presentation/d/1E1b18n_nAJ4OCRVbJzyHofNk-oEjRT69PP5XznIBupw/edit#slide=id.gac95142f7_0_0

########## Arrays ##########

  an ordered collection of objects

  set = [1,2,"five!", "8", nil, "jello"]
  cars = ["ford", "honda", "nissan", "cadillac", "toyota", "audi"]
  numbers = [1,2,3,4,5,6,7,8,9,10]

  set.first #set[0]
  set.last #set[set.length-1]




  ###############

  > fibonnacci = [0,1,1,2,3,5,8,13]
  > fibonnacci.length
  > fibonnacci[0]
  > fibonnacci[7] = 21
  > fibonnacci << 34
  > fibonnacci[fibonnacci.length] = fibonnacci[fibonnacci.length-2] + fibonnacci[fibonnacci.length-1]

  ###############

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
