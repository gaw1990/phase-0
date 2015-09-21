# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

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
