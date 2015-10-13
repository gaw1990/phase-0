# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   #input == the word downcase and split into an array
#   input.each do |x| # each letter in the array
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#     cipher.each_key do |y| #this is assigning the key of each pair in cipher to y
#       if x == y  # once x(the plaintext letter) == y(the equivelent ciphertext letter)
#         decoded_sentence << cipher[y] #this pushes the ciphertext value for the equivelent plaintext into a new array
#         found_match = true
#         break 
#         #shift the letter over by 4
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #saying if the plaintext character is one of these characters
#         decoded_sentence << " " #push a space into the decoded sentance. 
#         found_match = true
#         break
#         #essetially any of those characters(@#$% ect...) means a space
#       elsif (0..9).to_a.include?(x) # Else if the plaintext character is included in an array of nums from 0..9
#         decoded_sentence << x #just push the number
#         found_match = true
#         break
#         #numbers aren't changed
#       end #end if
#     end #end each_key
#     if not found_match  # What is this looking for?
#       decoded_sentence << x
#     end #end .each
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #this takes the decoded_sentance array, joins it and returns it 
# end

# Your Refactored Solution


def dr_evils_cipher(coded_message)

  decoded_sentence = coded_message.downcase.split("") 

  decoded_sentence.map! do |letter|

    if letter.ord >= 97 && letter.ord <= 122
      letter = shift_string(letter, 22)

    elsif letter == "@" || letter == "#" || letter == "$" || letter == "%"|| letter == "^" || letter == "&"|| letter =="*"
      letter = " "
    
    else 
      letter = letter

    end #if

  end #do

  decoded_sentence = decoded_sentence.join("")

end #def


def shift_string(string_to_shift, int_shift)
  letter_array = string_to_shift.downcase.split("")

  letter_array.map! do |letter|
    ((((letter.ord - 97) + int_shift) % 26) + 97).chr

  end #do

  letter_array.join("")

end #def

# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"

p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."

p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."

p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"

# Reflection
#
# Just a quick reflection: I had a lot of fun working onthis challenge-- Besides
# that I love cryptology, this was a fun one because we just had to refactor. 
# Refactoring was difficult, but I found some cool methods like .ord and .chr 
# which made things easy. Also I rediscovered my love for .map!


# Keep your reflection limited to 10-15 minutes!