# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution

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

# 3. total refactored solution

#def total(array_1)
  #if array_1.empty?
   # return 0
  #else 
   # array_1.inject(0) {|sum, n| sum+n}
   #end
   #return sum
  #end
#end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution

def sentence_maker(array_1)
  
  array_1.join(" ").capitalize << "."

  end

# 6. sentence_maker refactored solution











