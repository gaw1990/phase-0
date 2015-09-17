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


=begin
#########################################REFLECTION###############################################

1. What is an ArgumentError and why would you use one?
An ArgumentError is an error that is raised when there are an invalid amount or type of argument
being passed to a method. We raise an error in this case because our methods COULD take 0 as an 
arguement and be valid, but we DON'T WANT them to. A real die can't have 0 sides, so we're trying
to simulate that. 


2. What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I learned two new methods or commands 'raise' and '*'(splat). I looked through a lot more, but 
because I knew it better I ended up just using '.shuffle!' instead of using one of the RNG 
methods the assignment reccomended. 


3. What is a Ruby class?
A ruby class is a kind of object that takes arguments to define built in variables. It also has built in
methods that you can call. 


4. Why would you use a Ruby class?



5. What is the difference between a local variable and an instance variable?



6. Where can an instance variable be used?






=end


