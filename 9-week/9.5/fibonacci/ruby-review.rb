# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution

def is_fibonacci?(num)
  prev_num = 0
  fib_num = 1
  while fib_num < num
  	new_prev_num = fib_num
  	fib_num = fib_num + prev_num
  	prev_num = new_prev_num
  end
  if fib_num == num
  	return true
  elsif num == 0
  	return true
  else
  	return false
  end
end