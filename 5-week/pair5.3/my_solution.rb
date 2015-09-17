# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Lauren Markzon]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
# What are the steps needed to solve the problem: 
#input: array of numbers or strings 
# - create empty hash
# - put array into hash
# - group hash by key(object/element) and value(frequency)
# - display keys with highest values (or equal to the highest value)
#output: single element array of the most frequent values
#prints every key of every value that's equal to the highest_freq


# 1. Initial Solution
=begin
def mode(array)
	freq_hash = array.group_by {|x| x}
	result_hash = {}

	freq_hash.each_pair do |key, value|
		value_new = value.count
		result_hash.store(key, value_new)
	end #do

	highest_freq = result_hash.max_by {|k, v| v}[1]
	#tells us which value is highest.

	final_array = []

	result_hash.each do |key, value|
		if value == highest_freq
		final_array.push(key)
		end #if
	end #do
	return final_array
end
=end


# 3. Refactored Solution
def mode(array)
	result_hash = {}
	final_array = []

	freq_hash = array.group_by {|x| x}
	
	freq_hash.each_pair do |key, value|
		result_hash.store(key, value.count)

	end #ln57 do

	result_hash.each do |key, value|
		if value == result_hash.max_by {|key, value| value}[1]
		final_array.push(key)
		end #ln63 if
	end #ln62 do
	return final_array
end #ln 51 def

##################################################################
# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
We had to use a data structure in which we could assign descriptive frequency values to our 
objects, so we used a hash. We also used a nested array briefly and we presented our solution
in an array. 

Were you more successful breaking this problem down into implementable pseudocode than the
last with a pair? 
We had issues getting started with the pseudo code becayse we didn't know all of the syntax
and how we'd break down the problem overall. It seems like it's difficult to pseudocode 
with a limited ruby knowledge, I can describe the problem and solution, but the operations
I'm describing may not even exist. This is something I'm working on

What issues/successes did you run into when translating your pseudocode to code?
We kept going back and adding/subtracting from our pseduocode depending on what worked. 
Because we kept updating it, it translated pretty well to the code-- but our final code
didn't translate well from our original code. 

What methods did you use to iterate through the content? Did you find any good ones when you 
were refactoring? Were they difficult to implement?
".group_by", ".store", ".each_pair", "max_by" and ".push" are the methods we used while
iterating through the content. We didn't add any when refactoring, but we did condense our
code quite a bit.



=end