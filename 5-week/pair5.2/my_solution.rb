# Pad an Array

# I worked on this challenge [by myself, with: CJ Joulain]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
# Input: Array, minimum size of array, optional argument into array.
# Output: (i.e. What should the code return?) For those that don't reach minimum size of array, a padded return. Should return the array if the minimum is reached.
# What are the steps needed to solve the problem?
# Two coding scenarios; one with destructive and non-destructive method.
# Solution should involve .push, which will pad a short array.





# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  padding = min_size - array.length
  
  	if padding <= 0
    	return array

  	else
  	padding.times do
  	array.push(value)
  	end 
  	end 
return array
end





def pad(array, min_size, value = nil) #non-destructive
	padding = min_size - array.length
	arb_array = array.clone

	if padding <= 0
    	return arb_array

	else
		padding.times do
		arb_array.push(value)
		end
		return arb_array
	end
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  padding = min_size - array.length

  if padding <= 0
 	return array

  else
  	array.fill(value, array.length..min_size)

  end 

end


def pad(array, min_size, value = nil) #non-destructive
	padding = min_size - array.length
	arb_array = array.clone

	if padding <= 0
      return arb_array

	else
	  padding.times do
	  arb_array.push(value)
	  end
	  return arb_array
	end
end



=begin 

4. Reflection


Were you successful in breaking the problem down into small steps?
Initially we weren't sure exactly what steps we would need to achieve our output. We also 
weren't sure what destructive and non-destructive really meant. So I guess no, we weren't
successful breaking down the problem-- We had a bit more of a 'slash and burn' style, just
jumping in and making mistakes.


Once you had written your pseudocode, were you able to easily translate it into code? What 
difficulties and successes did you have?
Pseudocode is something I've been trying to focus on. When CJ and I started the challenge 
she said right away that she doesn't like pseudocode and wanted to jump right in. I wasn't
thrilled about that because I can definitely work by jumping in, but I understand the 
benefits of pseudocoding and professional developers use it, so I want to get used to it.



Was your initial solution successful at passing the tests? If so, why do you think that is? If not, 
what were the errors you encountered and what did you do to resolve them?
Yeah, our inital solution rocked. We did a lot of testing along the way to get the syntax right, 
so when we did finally run the rspec it was happy. The errors we were recieving mostly popped
up because our code wasn't "non-destructive". It took us a while to iron that out.



When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes, the .fill method was very useful. It allowed us to take out the .times and .push 
method from our destructive method, but for some reason it wouldn't pass rspec in the
destructive one. I think it had to do with using array.length for the minimum on our
range. 


How readable is your solution? Did you and your pair choose descriptive variable names?
I think our solution is very readable, all of our variable names corresponded to the
variable's function. 



What is the difference between destructive and non-destructive methods in your own words?
Destructive methods may modify the objects they work on and non-destructive methods do not.

=end