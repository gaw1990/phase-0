# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
	if number == 0
		1
	else 
		number * factorial(number - 1)
	end
end
