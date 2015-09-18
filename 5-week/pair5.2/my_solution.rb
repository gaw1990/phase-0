# Pad an Array

# I worked on this challenge [by myself, with: CJ Joulain]

# I spent [] hours on this challenge.


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

def pad!(array, min_size, value = nil)
  padding = min_size - array.length
  
  	if padding <= 0
    	return array

  	else
  	padding.times do
  	array.push(value)
  	end #ln 59 do
  	end #ln 55 if
return array
end





def pad(array, min_size, value = nil) 
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

def pad!(array, min_size, value = nil)
  padding = min_size - array.length

  if padding <= 0
 	return array

  else
  	array.fill(value, array.length..min_size)

  end 

end


def pad(array, min_size, value = nil) 
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



# 4. Reflection