# Numbers to English Words


# I worked on this challenge by myself.
# This challenge took me [] hours.


# Pseudocode
#
# Input: an integer >= 100
#
# Output: it's name in the english language
#
# Pseudocode:
# -Create a library of strings for numbers
# -create a new array to be filled with strings and returned
# -Split the number into an array of it's digits
# -Assign strings from the library depending on array position and integer value
# -Merge the strings into a coherent number
#

# Initial Solution


# def to_plain_english(integer)

# 	library = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninty", "One-Hundred"]

# 	num_string = integer.to_s

# 	integer_length = num_string.length 

# 	int_array = num_string.split("")  

# 	if integer_length == 3
# 		digit_0 = int_array[(integer_length - 1)].to_i
# 		digit_1 = int_array[(integer_length - 2)].to_i
# 		digit_2 = int_array[(integer_length - 3)].to_i

# 	elsif integer_length == 2
# 		digit_0 = int_array[(integer_length - 1)].to_i
# 		digit_1 = int_array[(integer_length - 2)].to_i

# 	else
# 		digit_0 = int_array[(integer_length - 1)].to_i
# 	end #if


# 	if integer <= 19 #0-19
# 		plain_english = library[integer] 

# 	elsif digit_0 == 0 && digit_1 != nil && digit_2 == nil # all numbers ending in 0 (eg. 20, 30, 40)
# 		plain_english = library[(18 + digit_1)]

# 	elsif integer < 100
# 		plain_english = library[18 + digit_1] + "-" + library[digit_0]

# 	elsif integer = 100
# 		plain_english = library[28]
		
# 	end #if
		

# end #def


# for i in 0..100
# p to_plain_english(i)
# end


# Refactored Solution



def to_plain_english(integer)

	@lib_to_19 = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"] 
	@lib_ty = ["Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninty"]
	@lib_big_nums = ["Hundred", "Thousand", "Million", "Billion", "Trillion"]

	def twenty_to_99(digit0, digit1)

		integer = (digit1.to_s + digit0.to_s).to_i


		if integer <= 19 #0-19
			plain_english = @lib_to_19[integer] 
		
		elsif digit0 == 0 && digit1 != nil
	 		plain_english = @lib_ty[digit1 - 2]

		else
	 		plain_english = @lib_ty[digit1 - 2] + "-" + @lib_to_19[digit0]

	 	end #if


	end #def



	num_string = integer.to_s

	integer_length = num_string.length 

	int_array = num_string.split("")  



	if integer_length >= 3
		digit_2 = int_array[(integer_length - 3)].to_i
	end

	if integer_length >= 2
		digit_1 = int_array[(integer_length - 2)].to_i
	end

	if integer_length >= 1 
		digit_0 = int_array[(integer_length - 1)].to_i
	end



	if integer < 100 
		return twenty_to_99(digit_0, digit_1)

	elsif integer >= 100 && digit_0 == 0 && digit_1 == 0
	 	plain_english = @lib_to_19[digit_2] + "-" + @lib_big_nums[0]

	elsif integer >= 100
		plain_english = @lib_to_19[digit_2] + "-" + @lib_big_nums[0] + " and " + twenty_to_99(digit_0, digit_1)
		
	end #if
	

end #def


for i in 0..1000
p to_plain_english(i)
end




# Reflection

# Here's a short, unwarranted reflection: This is fun! If I had more time I'd
# clean it up to handle any number!



