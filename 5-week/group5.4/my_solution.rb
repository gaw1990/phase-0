# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4

def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |item|
    item.to_s.split(//).include?(thing_to_delete)
  }

end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if {|key, value|
    key == thing_to_delete
  }
end

# Identify and describe the Ruby method(s) you implemented.
# -ARRAY-
# .delete_if -- deletes an array item if the  boolean statement that follows it is true
# .to_s -- turns the item to a string
# .split -- splits the string up into an array of characters
# .include? -- checks to see if the string of characters includes the letter we're trying
#              to get rid of
#
# -HASH-
# .delete_if -- deletes an array item if the  boolean statement that follows it is true
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end


=begin

Release 1: Identify and describe the Ruby method(s) you implemented.
-ARRAY-
.delete_if -- deletes an array item if the boolean statement that follows it is true
.to_s -- turns the item to a string
.split -- splits the string up into an array of characters
.include? -- checks to see if the string of characters includes the letter we're trying
to get rid of

-HASH-
.delete_if -- deletes an array item if the  boolean statement that follows it is true


Release 3: Reflect!
What did you learn about researching and explaining your research to others?
I'm not sure if I have any mindblowing tricks for navigating ruby docs, but I will say
that CMD+F is your friend (Control+F in windows). The only other thing I can say is be 
patient when reading through the docs-- So many times I feel like I can barely read the 
next line and I stumble upon the exact method I need. 


=end
