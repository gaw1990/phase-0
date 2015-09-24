# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16-digit number
# Output: true or false
# Steps:
# split digits into an array
# check if the array is 16 digits long
# double every other digit starting from the second to last
# break up digits >= 10 into single digit number
# add up all element in the array
# if the total % 10 == 0 return true
# otherwise return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(cc_num)
    
    if cc_num.to_s.length != 16
      raise ArgumentError.new("This number isn't 16 digits long! Try again with a valid credit card number.")
    else
      @cc_num = cc_num
    end
    
  end
  
  def check_card
    cc_array = @cc_num.to_s.split(//)
    
    storage = Array.new
    counter = -2
    while counter >= -16
      cc_array[counter] = cc_array[counter].to_i * 2
      if cc_array[counter] >= 10
        storage << cc_array[counter].to_s.split(//)
#         p cc_array[counter]
#         cc_array.delete_at(counter)
        
      end
      counter -= 2
    end
    
    cc_array << storage
    
#     cc_array = cc_array.flatten
    
#     p cc_array
    
#     cc_array.each do |num|
#       if num.to_i >= 10
#         cc_array.delete(num)
#       end
#     end
    
    p cc_array
    
    cc_array = cc_array.flatten
    cc_array = cc_array.delete_if {|digit| digit.to_i >= 10}
  
    p cc_array
    
    total = 0
    cc_array.each do |digit|
      total += digit.to_i
    end
    
    p total
    
    if total % 10 == 0
      return true
    else
      return false
    end
    
  end
  
  
end



# Refactored Solution








# Reflection