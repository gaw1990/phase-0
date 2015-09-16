
################################PSEUDOCODE########################################################
=begin
Assign
Input:list_array
Output:acct_groups
Steps:
	- 
	- RANDOMIZE LIST
	-
	- if list_array.length < 3
	-	puts "One's company, Two's a crowd, Three's a DBC accountability group"
	-	puts "We need more people!"
	-
	-
	- elsif list_array.length % 4 == 0
	- 	cut groups of 4
	-
	- elsif list_array.length % 4 == 3 
	-	cut a group of 3
	-	then cut groups of 4
	-
	-
	- elsif list_array.length % 5 == 0
	-	cut groups of 5
	-
	- elsif list_array.length % 5 >= 3
	-	cut group of (list_array.length % 5)
	-	cut groups of 5
	-
	-
	- else
	-	cut two groups of 3 then rerun both elseifs
	-	
	-end
	-end
=end

############################INITIAL CODE########################################################

def assign_groups(name_list)

	list_array = name_list.shuffle #randomizing list

	acct_groups = [] #create empty array

	if list_array.length < 3
		puts "One's company, Two's a crowd, Three's a DBC accountability group"
		puts "We need more people!" #for lists.length < acceptable_group_number (3)

	elsif list_array.length % 4 == 0 #for lists perfectly divisible by 4
	 	list_array.each_slice(4) { |x|
	 	acct_groups << [x]	
	 	} 
	
	elsif list_array.length % 4 == 3 #for lists perfectly divisible by 4 after 3 are subtracted
		acct_groups << list_array.first(3) 
		list_array.drop(3).each_slice(4) { |x|
		acct_groups << [x]
		}

	elsif list_array.length % 5 == 0 #for lists perfectly divisible by 5
		list_array.each_slice(5) { |x|
	 	acct_groups << [x]	
	 	} 
	
	elsif list_array.length % 5 == 3 #for lists perfectly divisible by 5 after 3 are subtracted
		acct_groups << list_array.first(3) 
		list_array.drop(3).each_slice(5) { |x|
		acct_groups << [x]
		}

	elsif list_array.length % 5 == 4 #for lists perfectly divisible by 5 after 4 are subtracted
		acct_groups << list_array.first(4) 
		list_array.drop(4).each_slice(5) { |x|
		acct_groups << [x]
		}

		#Below for cases when list.length == x:
		# 1. x / 4 != 0
		# 2. x / 4 - 3 != 0
		# 3. x / 5 != 0
		# 4. x / 5 - 3 != 0
		# 5. x / 5 - 4 != 0

	else 

		#slicing first 6 items-> dividing into groups of 3-> pushing them into acct_groups
		list_array.take(6).each_slice(3){ |x|
		acct_groups << [x]
		} 

		#dropping the first six items (which are stored temporarily in acct_groups)
		list_array.drop(6)

		#parsing 4 and 5 person groups (same code as above)
		if 
			list_array.length % 4 == 0
	 		list_array.each_slice(4) { |x|
	 		acct_groups << [x]	
	 		} 
	
		elsif list_array.length % 4 == 3 
			acct_groups << list_array.first(3) 
			list_array.drop(3).each_slice(4) { |x|
			acct_groups << [x]
			}

		elsif list_array.length % 5 == 0
			list_array.each_slice(5) { |x|
	 		acct_groups << [x]	
	 		} 
	
		elsif list_array.length % 5 == 3
			acct_groups << list_array.first(3) 
			list_array.drop(3).each_slice(5) { |x|
			acct_groups << [x]
			}

		elsif list_array.length % 5 == 4
			acct_groups << list_array.first(4) 
			list_array.drop(4).each_slice(5) { |x|
			acct_groups << [x]
			}

		end

	end

	#printing group number and group make up for user!
	acct_groups.each_with_index do |item, i|
	p "Group #{i}: " + item.join(", ")

	end

end


#############################################REFACTORED SOLUTION####################################################################
def assign_groups(name_list)

	list_array = name_list.shuffle #randomize list
	acct_groups = [] #create empty array

	if too_short_to_parse(list_array)
		witty_error

	elsif valid_to_parse(list_array)
		parse_groups(list_array, acct_groups)

	else #valid to parse, but funky number that requires two groups of 3 to validate
		push_6_drop_6(list_array, acct_groups)
		parse_groups(list_array, acct_groups)
		
	end #if

	print_groups(acct_groups) #prints groups with group numbers to user
	
end #def



##################################REFACTORED METHODS#############################################

def too_short_to_parse (list_array)
	list_array.length < 3
end #def
#Checks if the list has a length that's less then the valid group number (3).

#################################################

def witty_error
	puts "One's company, Two's a crowd, Three's a DBC accountability group"
	puts "We need more people!"
end #def
#Funny error message for lists that are too short to parse

#################################################

def print_groups(acct_groups)
	acct_groups.each_with_index do |item, i|
	p "Group #{i}: " + item.join(", ")

	end #do
end #def 
#printing group number and group members for user to see!

#################################################

def parse_groups(list_array, acct_groups)
	if list_array.length % 4 == 0 #for lists perfectly divisible by 4
	 	list_array.each_slice(4) { |x|
	 	acct_groups << [x]	
	 	} 
	
	elsif list_array.length % 4 == 3 #for lists perfectly divisible by 4 after 3 are subtracted
		acct_groups << list_array.first(3) 
		list_array.drop(3).each_slice(4) { |x|
		acct_groups << [x]
		}

	elsif list_array.length % 5 == 0 #for lists perfectly divisible by 5
		list_array.each_slice(5) { |x|
	 	acct_groups << [x]	
	 	} 
	
	elsif list_array.length % 5 == 3 #for lists perfectly divisible by 5 after 3 are subtracted
		acct_groups << list_array.first(3) 
		list_array.drop(3).each_slice(5) { |x|
		acct_groups << [x]
		}

	elsif list_array.length % 5 == 4 #for lists perfectly divisible by 5 after 4 are subtracted
		acct_groups << list_array.first(4) 
		list_array.drop(4).each_slice(5) { |x|
		acct_groups << [x]
		}
	end #if
end #def
#parsing valid groups for cases when list.length == x:
# 1. x / 4 == 0
# 2. x / 4 - 3 == 0
# 3. x / 5 == 0
# 4. x / 5 - 3 == 0
# 5. x / 5 - 4 == 0

#################################################

def push_6_drop_6(list_array, acct_groups)
	list_array.take(6).each_slice(3){ |x|
	acct_groups << [x]
	} 
	list_array.drop(6)
end #def
#slicing first 6 items-> dividing into groups of 3-> pushing them into acct_groups array
#dropping the first six items (which are now stored temporarily in acct_groups)

#################################################
def valid_to_parse (list_array)
list_array.length % 4 == 0 || list_array.length % 4 == 3 || list_array.length % 5 == 0 || list_array.length % 5 == 3 || list_array.length % 5 == 4
end #def
#Passes true if any of the following cases are true for list_array.length == x:
# 1. x / 4 == 0
# 2. x / 4 - 3 == 0
# 3. x / 5 == 0
# 4. x / 5 - 3 == 0
# 5. x / 5 - 4 == 0

####################################REFLECTION########################################################
=begin 

1. What was the most interesting and most difficult part of this challenge?
Slicing and managing my arrays through the workflow proved to be a challenge. It was hard to 
find the right commands and syntax, but once I had that I implimented it in my code well. 


2. Do you feel you are improving in your ability to write pseudocode and break the problem down?
This was the first challenge where I really followed the guidelines for pseudocode and refactoring.
After my GPS on Monday, I've 'seen the light' of pseudocoding. It lets you flush your thoughts out 
without committing yourself to any serious research or writing. 


3. Was your approach for automating this task a good solution? What could have made it even better?
I think my approach is awesome! It takes care of any size list and prioritizes 4 and 5 person groups
over 3 person groups. Though the code could probably have been more efficient, I'm extremely proud
of this solution.


4. What data structure did you decide to store the accountability groups in and why?
Arrays. You can move them in and out of methods, so they were really the only choice. I defined
subarrays for each seperate group within a main array and eventually just iterated over the main
array to spit out groups. 


5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I didn't learn anything new, but I got a lot more comfortable with using methods for everything. Even tiny
single lines of code-- It's just more readable to have a method instead. 

=end
