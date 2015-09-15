# create a list pseudocode:


# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)
  
  #1.
  # method: create_list
  # output: empty hash

  #2.
  # add
  # input: grocery_list
  # output: array with [[0] item [1] quantity]
  # steps
  # - explode the array 
  # - push the variables into grocery_list as a key => value pair
  
  #3.
  # Remove
  # input: grocery_list
  # output: item key to be removed
  # steps
  # -print list
  # -prompt input
  # -pass input onwards
  
  #4.
  # update
  # input: grocery_list
  # output: item key and value to be added
  # steps
  # -prompt imput of a key => value
  # -put those values into an array
  # -pass that array to the next method
  
  #5.
  #print to console
  #input: grocery_list
  #output: none
  #steps: print grocery_list to console

#1  

def create_list

  {}

end

#Since the last thing that happens in the method is an empty hash being created,
#the method returns an empty hash. 

grocery_list = create_list

#We assign grocery_list to the method create_list which turns grocery_list into an empty hash

#2

def add

  puts "What kind of item would you like to add to the list?"
  item_name = gets.chomp
  
  puts "Quantity?"
  quantity = gets.chomp
  
  [item_name, quantity]

end

#Ruby returns the result of the last operation. In this case item_name and quantity being put into an array
#is the last thing that happens so we get that array

grocery_list.store(*add)
grocery_list.store(*add)
grocery_list.store(*add)
grocery_list.store(*add)

puts "   "
puts "   "

#cutesy method so you know what items you have
grocery_list.each do |key, value|
  puts value + ' ' + key
end 


#3
#Gets the name of the item you want to remove
def remove
  puts "Which item would you like to remove?"
  item = gets.chomp
end

#The item the user tells us to delete(the returm from remove) is passed to this .delete method on grocery_list. 

grocery_list.delete(remove)
p grocery_list

#4

def update

  puts "Which item would you like to update?"
  update_item = gets.chomp
  
  puts "Quantity?"
  new_quantity = gets.chomp
  
  [update_item, new_quantity]

end

#the same method essentially as 'add" we just are updating an existing pair

grocery_list.store(*update)
p grocery_list

#5
puts "Here\'s your final list!"

grocery_list.each do |key, value|
  puts value + ' ' + key
end 

=begin
What did you learn about pseudocode from working on this challenge?

Caroline really kind of forced pseudocode onto me. Before the challenge I didn't really think about pseduocode
as essential, I thought of it as a silly way to express ideas. I always wanted to just jump into the code and 
start messing around. We did some together and she showed me how to effectively set up pseudocoding, after that I 
kind of got the hang of it. It's actually kind of cool if you think about it as a way to guide others 
through your thoughts as you came up with the method and then built it. It's also a great map for you to 
go back to. 

What are the tradeoffs of using Arrays and Hashes for this challenge?

Exploding arrays! They're useful. We had to store the list in a hash, but to get pairs out of a method and 
then add them to our grocery hash we had to use an array with a grocery variable and a quantity variable, 
explode the array into two strings, then set them as a hash key=>value. 

What does a method return?

A method either returns the product of the last thing that happened in the method or a specifed return.

What kind of things can you pass into methods as arguments?

Simple objects, arrays, hashes, other methods.

How can you pass information between methods?
You can pass info between methods using implicit return and then using the method with the return as the 
arguement for the method you want to pass the value to.


What concepts were solidified in this challenge, and what concepts are still confusing?
Implicit return was a big one that really started to make sense. Caroline took time to explain it to me 
and actually hearing it from a person made a big difference. I also understood local variables much 
better.

=end