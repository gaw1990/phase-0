# Full Name Greeting

puts 'Hello there, what\'s your first name?'
firstname = gets.chomp

puts 'Cool! Great to meat you ' + firstname + '. What\'s your middle name?'
middlename = gets.chomp

puts middlename + '? That\'s also nice. What\'s your last name?'
lastname = gets.chomp

puts firstname + ' ' + middlename + ' ' + lastname + '! What a phenomenal name!! Great to meet you! ;)'

# some space
puts ' '
puts ' '

# Bigger, better favorite number

puts 'What\'s your favorite number?'
favnum = gets.chomp

puts favnum + '? Great choice...'

betnum = favnum.to_i + 1

puts "But do you know what would be even cooler? A bigger, better number like " + betnum.to_s

=begin

-- 4.3 REFLECTION --

1. How do you define a local variable?

 Variable_Name = ____(string, integer or boolean value) 

2. How do you define a method?

 def Method_name(variable 1, variable 2, variable 3)
 (argument)
 end 

3. What is the difference between a local variable and a method?

A method can take multiple variables and return an output. A local variable is a static value for the session. 

4. How do you run a ruby program from the command line?

ruby your_ruby_file.rb


5. How do you run an RSpec file from the command line?
rspec your_rspec_file.rb




6. What was confusing about this material? What made sense?
Nothing was confusing, though my 4.3.1 method wasn't passing the rspec for a while.
It turned out that using puts outputs 'nil' so even though I was seeing the correct
output being printed to the console, the rspec file was expecting a RETURN of that
value. I ultimately had to use 'p' instead of 'puts' and it worked. That took me
a significant amount of time to figure out though.


=end





