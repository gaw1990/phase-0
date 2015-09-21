# Person 1 (Awilda Cantres)

def my_array_finding_method(source, thing_to_find)
  source.keep_if do |x| 
    x.to_s.include?(thing_to_find)
  end
end

def my_hash_finding_method(source, thing_to_find)
    source.keep_if {|k, v| k if v == thing_to_find}.keys
end
    
# Identify and describe the Ruby method(s) you implemented.
# keep_if = to keep the elements that passed the iteration
# include? = to include what's specified in the parenthesis
# .keys = to only print out the keys from the hash


# Person 2 (George Wambold because lacking 5th group member)
def my_array_modification_method!(source, thing_to_modify)
  source.map! {|x|
    if x.is_a?(Integer)
      x += thing_to_modify
    else
      x
    end
  }
end


def my_hash_modification_method!(source, thing_to_modify)
  source.each {|key, value|
      source[key] = (value + thing_to_modify)
  }
end


# Identify and describe the Ruby method(s) you implemented.
# .map! -> destructive iteration over array values
# .each -> Simple iteration over hash key => value pairs
#

# Person 3 (Salim Rahimi)
def my_array_sorting_method(source)
  new_array=source.sort_by {|x| x.to_s} # This line is here to make sure all tests initially fail. Delete it when you begin coding.
  new_array
end

def my_hash_sorting_method(source)
   new_hash=source.sort_by {|key,value| value} # This line is here to make sure all tests initially fail. Delete it when you begin coding.

end

# Identify and describe the Ruby method(s) you implemented.
# I used sort_by for both. sort_by sorts an array or hash by the 
# element or value given in the block and returns an array with the
# sorted elements.

# Person 4 (George Wambold)

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

# Release 1: Identify and describe the Ruby method(s) you implemented.
# -ARRAY-
# .delete_if -- deletes an array item if the boolean statement that follows it is true
# .to_s -- turns the item to a string
# .split -- splits the string up into an array of characters
# .include? -- checks to see if the string of characters includes the letter we're trying
# to get rid of

# -HASH-
# .delete_if -- deletes an array item if the  boolean statement that follows it is true

#Person 5 (Aji Slater)

def my_array_splitting_method(source)
  source.partition {|x| x.is_a? Integer}
end

def my_hash_splitting_method(source, age)
  source.partition {|key, value| value <= age }
end

# Identify and describe the Ruby method you implemented. Teach your accountability group 
# how to use the methods.
#
# The partition method is fairly straightforward. It will return nested arrays divided based
# on a block of code that you pass to the method. After .partition, open curly braces and define 
# your parameters, just like any other iterator such as .each. Then give a condition, think of it 
# like the if/else statement in my non-refactored solution above. Elements of your array or hash 
# that == true go to one array, and false goes to the other.