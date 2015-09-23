# Die Class 2: Arbitrary Symbols

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


########################################################

# Pseudocode for class Die

# method initialize
#
# Input: Array of strings
#
# Output: instance variable equal to the array
#
# Steps:
# set instance variable @die_sides to labels(inputed array)
# END

# ArguementError for class Die
#
# Input(ArgumentError): An array of strings
#
# Output(ArgumentError): An error if it's empty
#
# Steps: 
# UNLESS the array's length > 0
# raise ArgumentError
# END

# method Die.sides
#
# Input(sides): An array of strings
#
# Output(sides): the number of sides (strings) on the die (array)
# 
# Steps:
# get the length of the array
# let it be implicitly returned 
# END

# method Die.roll
#
# Input(roll): An array of strings
#
# Output(roll): Random string from the array
#
# Steps: 
# get a random number from 1..string.length
# return the array index with that random number
# Initial Solution
# END

########################################################
# Initial Solution

class Die

  def initialize(labels)
  	@die_sides = labels

  	unless @die_sides == nil || @die_sides.length > 0 
  		raise ArguementError.new
  	end

  end

  def sides
  	@die_sides.length
  end

  def roll
  	upfacing_side = rand(@die_sides.length)
  	@die_sides[upfacing_side]
  end

end

########################################################
# Refactored Solution

class Die


  def initialize(labels)
  	@die_sides = labels

  	unless @die_sides.length > 0 
  		raise ArguementError.new
  	end

  end
  

  def sides
  	@die_sides.length
  end


  def roll
  	@die_sides[rand(@die_sides.length)]
  end


end

##################################################
# Reflection
=begin

-What were the main differences between this die class and the last one you 
created in terms of implementation? Did you need to change much logic to get 
this to work?

It was pretty much the same exact thing, I didn't have to change any logic. I 
just used the method rand instead of shuffle for my RNG. 

-What does this exercise teach you about making code that is easily changeable 
or modifiable? 

It shows me that there is a  basic "dice" class that can be slighly modified to 
take on a lot of different dice situations. 

-What new methods did you learn when working on this challenge, if any?

"rand" It gives you a random number ie. rand(100) #=> 52

-What concepts about classes were you able to solidify in this challenge?

This challenge was very familiar, so I took the opportunity to focus on my 
pseudocode. I tried to make it as readable as possible and specific without 
using Ruby terms. Also I guess I now know that instance variables are the 
@variable ones. 

=end