# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array
# Output: sum of all objects (integers)
# Steps to solve the problem: Stop the method if there isn't anything in the array, add all elements, return the product.


# 1. total initial solution

#def total(array_1)
  #if array_1.empty?
   # return 0
  #else 
   # array_1.inject(0) {|sum, n| sum+n}
   #end
   #return sum
  #end
#end

# 3. total refactored solution

def total(array_1)
  if array_1.empty?
    return 0
  else 
    sum=0
    array_1.each do |n|
        sum += n
   end
   return sum
  end
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: array with a single string who's first letter is capitalized and who has a period on the end
# Steps to solve the problem: capitalize the first string, join the strings, push a period, get rid of the space


# 5. sentence_maker initial solution

def sentence_maker(array_1)
  
  array_1.join(" ").capitalize << "."

  end

# 6. sentence_maker refactored solution











