# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

#1.
# Method: separate_comma
# Input: an_integer
# Output: comma_integer
# Steps:
#	-turn the integer into a string
#	-seperate the string into an array
#   -add commas at index -2, -5, -8
#   -turn it back into a string
#   -maybe turn it into an integer? might not be possible with commas
# 
# 		



# 1. Initial Solution
def separate_comma(some_int)
	
	#number we get -> string -> split into an array
	array = some_int.to_s.split(//)

	if array[-4].nil? == true
		p array.join
	elsif array[-4].nil? == false && array[-7].nil? == true
		p array.insert(-4, ",").join
	elsif array[-7].nil? == false && array[-10].nil? == true
		p array.insert(-4, ",").insert(-8, ",").join
	elsif array[-10].nil? == false && array[-13].nil? == true
		p array.insert(-4, ",").insert(-8, ",").insert(-12, ",").join
	end

end



# 2. Refactored Solution

=begin 
0. Pseudocode
input:a number split into single character strings on an array
output: that same number joined together with commas at every array[|x| -4 * x]
steps:
	-
	-
	-
	-
	-
	-

=end




def separate_comma1(some_int)

	#number we get -> string -> split into an array ->reverse->s
	some_int.to_s.split(//).reverse.each_slice(3).map(&:join).join(",").reverse

end





=begin 
3. Reflection
1. What was your process for breaking the problem down? What different approaches did you consider?

I was pretty unclear on exactly which methods I was going to use, but I had a decent plan to start 
that I ultimately didn't stray too far from. To break it down I just thought about what would be 
input, what output we'd want and what steps we'd take to get there. I really just considered the 
approach I finally used and tweaked it a little bit while building it.

2. Was your pseudocode effective in helping you build a successful initial solution?

Yes, it let me organize my thoughts a little better. Ultimately what took the most time and effort
was figuring out syntax and which methods to use.

3. What Ruby method(s) did you use when refactoring your solution? What difficulties did you have 
implementing it/them? Did it/they significantly change the way your code works? If so, how?

Honestly, I couldn't find any way to shorten my method because I used a "long way around" and very
inefficient workflow. My refactored code uses methods copied from another solution someone posted 
on stackoverflow. The idea of reversing the array before working on it made a lot of sense, and if
I had considered that I may have been able to come up with the each_slice method on my own.

4. How did you initially iterate through the data structure?
I used negative array values to insert commas every 4 items. 

5. Do you feel your refactored solution is more readable than your initial solution? Why?
Yes. It's more concise and it makes sense reading it through. My original solution is 
very clunky.







=end