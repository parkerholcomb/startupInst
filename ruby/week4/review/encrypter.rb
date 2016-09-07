# Build an application that can encrypt and decrypt a string. For example:
#
# encrypt(“This is a secret”)
# should return something like “jhsdakha%j3jb”
#
# You should also be able to decrypt the encrypted message.
#
# decrypt(“jhsdakha%j3jb”)
# it should return “This is a secret”
#
# Bonus: Implement a Caesar Cipher encryption which is a simple encryption
#  method by shifting the letters down a certain number.
# You’ll need the encrypted string and the correct number shifted.
# encrypt(“this is a secret”, 5)
# http://en.wikipedia.org/wiki/Caesar_cipher

require 'pry'




# def join(array, join_by)
#   output = ""
#   array.each do |elem|
#     output += elem + join_by
#     puts output
#   end
# end
#
# array = ['bob', 'joe', 'sally', 'sue']
#
# join(array, "")

#
#
def encrypt (message, key = 5)
  message_chars = message.chars
  encrypted_chars = []
  message_chars.each do |char|
    encrypted_char = encrypt_char(char, key)
    encrypted_chars << encrypted_char
  end
  encrypted_chars.join("")
end

def encrypt_char(char, key)
  (char.ord + key).chr
end

def decrypt(encrypted_message, key)
  encrypted_chars = encrypted_message.chars
  decrypted_chars = []
  encrypted_chars.each do |char|
    decrypted_char = (char.ord - key).chr
    decrypted_chars << decrypted_char
  end
  decrypted_chars.join("")
end


puts "enter message to be encrypted\n"
message = gets.chomp

puts "now enter the secret offset integer\n"
number = gets.chomp.to_i

encrypted = encrypt(message, number)
# binding.pry
# encrypted = encrypt(message)

puts "the encrypted message is \n#{encrypted}\n\n"

continue = 'y'
until continue == 'n'
  puts "would you like to try to decrypt? (y/n)"
  continue = gets.chomp

  puts "enter the secret key number"
  key = gets.chomp.to_i

  decrypted = decrypt(encrypted, key)
  puts "decrypted message is \n#{decrypted}"

end
