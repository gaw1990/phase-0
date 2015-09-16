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



##################################Refactored Methods#############################################

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

#################################################


bobolinks_list = ["Aji Slater", "Alex Jamar", "Alison Lyons", "Aurelio Garcia", "Awilda Cantres", "Celeste Carter", "Christopher Mark", "CJ Joulain", "Colin Razevich", "David O'Keefe", "Eric Shou", "Eunice Choi", "Farman Pirzada", "George Wambold", "Hana Worku", "Harmin Jeong", "Hector Jair Moreno Gomez", "Ian Lockwood", "Irina Renteria", "Jamie Runyan", "Jenna Andersen", "Julian Lesse", "Jupiter Baudot", "Kai Huang", "Kim Allen", "Kristie Chow", "Landey Patton", "Lauren Jin", "Lauren Markzon", "Marcel Galang",	"Marcus Davis",	"Marvy Tagala",	"Michael Landon", "Michael Silberstein", "Miguel Melendez", "Mike Cerrone", "Nathan Park", "Nicholas Yee", "Ovi Calvo", "Pamela Antonow", "Paul Etscheit", "Regina Compton", "Richard Leo", "Ricky Binhai Hu", "Rosslyn Sinclair-Chin", "Ryan Lesson", "Salim Rahimi", "Sam Purcell", "Shawn Watson", "Shunqian Luo", "Solomon Fernandez","Un Choi", "Zino Hu"]

assign_groups(bobolinks_list)



