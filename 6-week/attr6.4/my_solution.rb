#Attr Methods

# I worked on this challenge by myself.

# I spent [1] hours on this challenge.

class NameData
	attr_reader :name

	def initialize
		@name = "George Wambold"
	end
	
end

class Greetings

	def initialize
		@name_data = NameData.new
	end

	def greet
		puts "Hello #{@name_data.name}!"
	end

end



# Reflection
=begin

-(Release 1)
-What are these methods doing?

The methods are displaying and giving the opportunity to change the variables
in class Profile.

-How are they modifying or returning the value of instance variables?

The Profile class gives methods that allow redifinition of the instance 
variables. It does this just by setting the input of these methods to equal
the @instance_variable.

-(Release 2)
-What changed between the last release and this release?

We got rid of the "what_is_age" method in favor of attr_reader: :age. This 
new method gives us the ability to read the @age variable from outside the 
class.

-What was replaced?
The "what_is_age" method

-Is this code simpler than the last?
Yes, it's much easier to read and the code is simpler.

-(Release 3)
-What changed between the last release and this release?

The change_my_age method was removed and replaced with attr_writer :age which
allows us to reassign the intance variable @age from outside the class. 

-What was replaced?

The change_my_age method. 

-Is this code simpler than the last?

Again, yes it's simpler, easier to read and use. 

-(Release 6)
-What is a reader method?

It's a method that you place in a Class to allow yourself to read an 
instance variable from outside the class. 

-What is a writer method?

It's the same as a reader method except it lets you change a Class's 
instance variable from outside of the class. 

-What do the attr methods do for you?

They let you: 
a. "attr_reader" lets you read a Class's instance variables
b. "attr_writer" write a Class's instance variables
c. "attr_accessor" let's you do both

-Should you always use an accessor to cover your bases? Why or Why not?

That seems like the smartest move to me at this moment, but according to 
text in this challenge and a stack overflow you want to limit access to 
your variables. You don't want to accidentally modify a variable. Also 
if you're thinking about MVP, you wouldn't use accesssor unless you had to.

-What is confusing to you about these methods?

I'm a bit confused as to the syntax you use to call the attr variables. Right 
now I think that you have to initialize the Class.new wherever you want to access
the variables, then you can call it by Class.variable or reassign it by 
Class.variable = new_value.

	
=end