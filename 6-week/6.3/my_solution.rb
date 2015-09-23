# Build a simple guessing game

# I worked on this challenge [by myself, with: Lauren Markz(ukerberg)on].
# I spent [#] hours on this challenge.

# Pseudocode for Class GuessingGame


# method initialize
# Input: 
# An integer arguement "answer"
#
# Output: 
# An instance variable called "correct_answer"
#
# Steps:
# assign "@correct_answer" the value of "answer"
# END

# method guess
# Input: 
# integer "guess"
#
# Output: 
# symbol :low, :high, :correct
#
# Steps:
# assign "@guess" to the value of "guess"
# IF @guess is greater than @correct_answer 
# 	return :high
# ELSIF @guess is lower than @correct_answer
#  	return :low
# ELSE 
#   return :correct 

# method solved?
# Input: 
# @guess and @correct_answer
#
# Output: 
# A boolean 
#
# Steps:
# @guess == @correct_answer



# Initial Solution

class GuessingGame

  def initialize(answer)
   	@correct_answer = answer

  end 

  def guess(guess)
  	@guess = guess

  	if @guess > @correct_answer
  		return :high

  	elsif @guess < @correct_answer
  		return :low

  	else 
  		return :correct

  	end #if

  end #def


  def solved?
  	@guess == @correct_answer
  end #def

end #class



# Refactored Solution

class GuessingGame

  def initialize(answer)

   	@correct_answer = answer

  end 

  def guess(guess)

  	@guess = guess

  	if @guess > @correct_answer then :high 
  	elsif @guess < @correct_answer then :low
  	else :correct
  	end
  end 

  def solved?
  	@guess == @correct_answer
  end 

end 



# Reflection
=begin

-How do instance variables and methods represent the characteristics and 
behaviors (actions) of a real-world object?

The class and it's internal methods are like the blueprint for something. They
lay out the plans for what you want, and then you apply those plans to 
different circumstances. Like a house blueprint (class + methods), you can 
build that house over and over again on different plots of land. They all have
the same plans and structure, but the address changes, the wallpaper color 
might change. 

-When should you use instance variables? What do they do for you?

You should use instance variables when you're going to call that variable 
outside of the method it's defined in. 

-Explain how to use flow control. Did you have any trouble using it in this 
challenge? If so, what did you struggle with?

Flow control uses implicit and explicit returns and ordering on the page to 
make sure your code is getting the correct inputs and giving the correct 
outputs. I guess we could have used implicit return of the "guess" method to 
input into the "solved?" method, but the way we did it was simpler.

-Why do you think this code requires you to return symbols? What are the 
benefits of using symbols?

Symbols are immutable, so I guess if we had used different steps that required 
calling our returned symbol later in the code, it could have been useful. The 
steps we took make symbols unneeded. 

=end