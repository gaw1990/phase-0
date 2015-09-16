# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: integer between 1..6
# Output: number_of_sides, random_number (between 1 and number_of_sides)
# Steps:
# 	- define a 'Die' class
# 	- give it an assignable @sides local variable
# 	- give it a sides method 
# 		-input: nil
# 		-output @sides 
# 	- give it a roll method 
#		-input: nil
#		-output: a random number between 1 and no_of_sides
#		-steps:
# 			-sides = @sides.to_i
# 			-side_array << (1..#{sides}).to_a
# 			-p side_array[0].shuffle
# 			-

###################################################################################################
# 1. Initial Solution

class Die
  def initialize(sides)

  	unless sides > 1
  		raise ArgumentError.new
  	end

    @no_of_sides = sides

  end

  def sides
    p @no_of_sides
  end

  def roll
  	side_array = [*1..@no_of_sides]
  	side_array.shuffle!
  	p side_array[0]
  end #def roll
end #class

dice = Die.new(5)

p dice.sides


p dice.roll

###################################################################################################
# 3. Refactored Solution
class Die

  def initialize(sides)
	@no_of_sides = sides

	die_argument_error   

  end

  def sides
    print_number_of_sides

  end

  def roll
  	side_array = side_array_generator
  	side_array.shuffle!
  	p side_array[0]

  end

end 

###################################################################################################
def die_argument_error
 	unless @no_of_sides > 1 && @no_of_sides >= 6
   		raise ArgumentError.new

   	end
   	
 end

##############################################################

def print_number_of_sides
	p @no_of_sides

end

##############################################################

def side_array_generator
	[*1..@no_of_sides]

end

#################################################################################################
# 4. Reflection



