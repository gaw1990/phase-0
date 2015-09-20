# Person 1

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

# Release 1: Identify and describe the Ruby method(s) you implemented.
# -ARRAY-
# .delete_if -- deletes an array item if the boolean statement that follows it is true
# .to_s -- turns the item to a string
# .split -- splits the string up into an array of characters
# .include? -- checks to see if the string of characters includes the letter we're trying
# to get rid of

# -HASH-
# .delete_if -- deletes an array item if the  boolean statement that follows it is true

#Person 5 

def my_array_splitting_method(source)
  source.partition {|x| x.is_a? Integer}
end

def my_hash_splitting_method(source, age)
  source.partition {|key, value| value <= age }
end