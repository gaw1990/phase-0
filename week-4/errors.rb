# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
  #  puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# ln170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# It's telling me after the last line, but I think that's just the last place it couldn't find an end
# 6. Why did the interpreter give you this error?
# The code is defining a method that contains a while loop. There should be one 'end' for the method and another 'end' for the nested while loop, but we only have one 'end' here.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# ln35
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# Undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
# Right on the 'south_park' object
# 5. Why did the interpreter give you this error?
# We're presenting an object, 'south_park', without defining it as a method or as a local variable.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# ln50
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# Undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# On the 'cartman' object
# 5. Why did the interpreter give you this error?
# Again, we're presenting an object that looks like a method, but it isn't defined at all. That confuses ruby.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# ln65
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# in the method 'cartmans_phrase'
# 5. Why did the interpreter give you this error?
# Because we're trying to input 'I hate Kyle' into a method that doesn't take any varaibles. (Hence the 1 for 0).

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# ln84
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartman_says': wrong number of arguments (0 for 1
# 4. Where is the error in the code?
# The error is in the 'cartman_says' method
# 5. Why did the interpreter give you this error?
# We get the error because we're trying to call the method on line 88, but we don't give it any input to work with. It's expecting one variable, and we give it nothing.(hence 0 for 1)



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# ln105
# 2. What is the type of error message?
#  ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# The error's in the 'cartmans_lie' method
# 5. Why did the interpreter give you this error?
# The method expects two inputs and we're only giving it one. (1 for 2)

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# ln124
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# in '*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# The error is in the string "Respect my authoritay!"
# 5. Why did the interpreter give you this error?
# We're getting an error because we're telling ruby to multiply the integer 5 by a string. 

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# ln139
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# in `/': divided by 0
# 4. Where is the error in the code?
# In the '20/0' part 
# 5. Why did the interpreter give you this error?
# Any number divided by zero is undefined.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# ln155
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# `require_relative': cannot load such file -- /Users/georgewambold/Desktop/DBC/phase-0/week-4/cartmans_essay.md 
# 4. Where is the error in the code?
# In the filepath
# 5. Why did the interpreter give you this error?
# The filepath we specified "cartmans_essay.md" is non-existant


# --- REFLECTION -------------------------------------------------------
#Write your reflection below as a comment.
#

# -Which error was the most difficult to read?
# The first one. I had a hard time understanding why it was pointing at ln170 (the end of the document).
# I thought I was doing something wrong, or my file was messed up and it took me a while to figure out 
# nothing was actually wrong, I was just reading it wrong.
#
#
# -How did you figure out what the issue with the error was?
# Just by slowing down and really reading through the code. The error was self evident after I slowed
# down;
#
#
#
# -Were you able to determine why each error message happened based on the code? 
# Yeah, a few of them took me a minute or two, but generally I found it pretty easy to figure out.
#
#
#
#
# -When you encounter errors in your future code, what process will you follow to help you debug?
# I like that it points you to the line where the error happened-- Using that and our knowledge 
# of the object on that line (and maybe some googling) should be able to see me through.
#
#
