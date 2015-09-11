# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def factorial(n)
	if n == 0
		return 1
	elsif n == 1
		return 1
	else
		result=1	
	n.downto(1) { |n| result *= n}
	return results
end
end

puts factorial(5)