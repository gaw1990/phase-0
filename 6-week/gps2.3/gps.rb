# Your Names
# 1) George Wambold
# 2) Regina Compton

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity) #method with two arguments
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} #hash
  
  unless library.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end #unless
  
  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size

    if serving_size_mod == 0
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
    elsif serving_size_mod >= 7
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredient(s). You can make #{serving_size_mod/7} more pie(s) plus #{serving_size_mod % 7} more cookies."
    elsif serving_size_mod >= 5 
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredient(s). You can make #{serving_size_mod/5} more cake(s) plus #{serving_size_mod % 5} more cookies."
    else 
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredient(s). You can have #{serving_size_mod/1} more cookie(s)."
    end #if  

end #def
  
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin 

-What did you learn about making code readable by working on this challenge?

Concentrating on readability means chosing good method and variable names. 
Reading through good code should be sort of like reading a sentance in english,
like IF jacket_size < chest_size then puts "this jacket's too small!". Even 
someone who's never written a line of Ruby would probably understand that code.

Did you learn any new methods? What did you learn about them?

No new methods in this challenge, but there was a lot of exposure to modulus,
which is something I'm slowly getting a better grasp on. 

What did you learn about accessing data in hashes? 

That you can access data in hashes by key just like an array. But I kind of 
already knew that. Nothing super new with hashes.

What concepts were solidified when working through this challenge?

Like I said, it was awesome to get more exposure to modulus and seeing how 
it's used. Also it was nice to mess with hashes a little bit, up to this point
most challenges have featured arrays.

=end