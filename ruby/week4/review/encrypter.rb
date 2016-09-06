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
#
#
# Bonus: Implement a Caesar Cipher encryption which is a simple encryption
#  method by shifting the letters down a certain number.
# You’ll need the encrypted string and the correct number shifted.
# encrypt(“this is a secret”, 5)
# http://en.wikipedia.org/wiki/Caesar_cipher

require 'pry'

def encrypt(message, shift = 1)
  message_chars = message.chars
  encrypted_chars = []
  message_chars.each do |char|
    encrypted_char = (char.ord + shift).chr
    encrypted_chars << encrypted_char
  end
  encrypted_chars.join("")
end

def decrypt(encrypted_message, shift)
  encrypted_chars = encrypted_message.chars
  decrypted_chars = []
  encrypted_chars.each do |char|
    decrypted_char = (char.ord - shift).chr
    decrypted_chars << decrypted_char
  end
  decrypted_chars.join("")
end


puts "enter message to be encrypted"
message = gets.chomp

puts "now enter the secret offset integer"
offset = gets.chomp.to_i

encrypted = encrypt(message, offset)

puts "the encrypted message is \n#{encrypted}"

continue = 'y'
until continue == 'n'
  puts "would you like to try to decrypt? (y/n)"
  continue = gets.chomp

  puts "enter the secret key number"
  key = gets.chomp.to_i


  decrypted = decrypt(encrypted, key)
  puts "decrypted message is \n#{decrypted}"

end
