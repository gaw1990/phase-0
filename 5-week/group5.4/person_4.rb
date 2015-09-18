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
