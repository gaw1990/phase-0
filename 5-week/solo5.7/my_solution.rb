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
    return @no_of_sides
  end

  def roll
  	side_array = [*1..@no_of_sides]
  	side_array.shuffle!
  	return side_array[0]
  end #def roll
end #class


###################################################################################################
# 3. Refactored Solution
class Die

  def initialize(sides)
	  @no_of_sides = sides

	  die_argument_error   

  end

  def sides
    return_number_of_sides

  end

  def roll
    return_shuffled_side

  end

end #class

###################################################################################################
def die_argument_error
 	unless @no_of_sides > 1 && @no_of_sides >= 6
   		raise ArgumentError.new

   	end

 end

##############################################################

def return_number_of_sides
	return @no_of_sides

end

##############################################################

def side_array_generator
	[*1..@no_of_sides]

end

##############################################################

def return_shuffled_side
  side_array = side_array_generator
  side_array.shuffle!
  return side_array[0]
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
A ruby class is a kind of object that takes arguments to define built in variables. It can also have built in
methods that can be called by class.method. 


4. Why would you use a Ruby class?
I'd imagine that when we're working with big peices of code, we'll often be recycling segments of code
or using the same methods over and over. It's simpler and more efficient to store code in classes and 
then call it again and again. It seems more efficient that way.


5. What is the difference between a local variable and an instance variable?
Instance variables exist in a class and are defined for each instance of that class. For example 
for the Starbucks_order class, you could have an @size instance variable and for one instance it 
could == 'grande' and for another it could be 'venti'. 

Local variables are just called by their name, no '@' symbol before the name. Also (i had to look this up)
they do not give a default value of nil when called. For example if you call #chinook #=> nil, but if you 
call 'chinook' #=> error. 


6. Where can an instance variable be used?
In a class! I think that's the only place they can be used.





=end


