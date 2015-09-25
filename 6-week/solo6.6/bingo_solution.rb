# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#
# Input: none
#
# Output: a letter and a number
#
# Steps:
#
#

# Check board for number, locate it, replace it with an 'x'
#
# Input: 
# @bingo_ball ["LETTER", INTEGER]
#
# Output:
# A bingo board with the appropriate X's
#
# Steps:
# Replace the bingo letter in our input with it's corresponding index number
# ("B" = 0), ("I" = 1), ("N" = 2), ("G" = 3), ("O" = 4)
#
# IF bingo ball's integer(@bingo_ball[1]) is included in bingo board's first 
# nested array's at bingo ball's letter index (@bingo_ball[0])
# THEN replace the integer with X
# repeat for all 5 nested arrays
# ELSE puts "Sorry, no dice this time!"
#
# Display a column and then the board to the console (prettily)
#
# Input: 
# Board nested array
#
# Output: 
# Pretty board to console
#
# Steps:
# Print bingo board's array one line at a time
#
#
#

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
  	bingo_letters = ["B", "I", "N", "G", "O"]
  	@bingo_ball = [bingo_letters.shuffle[0], rand(100)]
  end

  def check
  	if @bingo_ball[0] == "B" then @bingo_ball[0] = 0
  	elsif @bingo_ball[0] == "I" then @bingo_ball[0] = 1
  	elsif @bingo_ball[0] == "N" then @bingo_ball[0] = 2
  	elsif @bingo_ball[0] == "G" then @bingo_ball[0] = 3
  	elsif  @bingo_ball[0] == "O" then @bingo_ball[0] = 4
  	end #if

  	if @bingo_board[0][@bingo_ball[0]] == (@bingo_ball[1])
  		@bingo_board[0][@bingo_ball[0]] = 'X'
  	elsif @bingo_board[1][@bingo_ball[0]] == (@bingo_ball[1])
  		@bingo_board[0][@bingo_ball[0]] = 'X'
  	elsif @bingo_board[2][@bingo_ball[0]] == (@bingo_ball[1])
  		@bingo_board[0][@bingo_ball[0]] = 'X'
  	elsif @bingo_board[3][@bingo_ball[0]] == (@bingo_ball[1])
  		@bingo_board[0][@bingo_ball[0]] = 'X'
  	elsif @bingo_board[4][@bingo_ball[0]] == (@bingo_ball[1])
  		@bingo_board[0][@bingo_ball[0]] = 'X'
  	else 
  		puts "Better luck next time!"
  	end #if


  	p @bingo_board[0]
   	p @bingo_board[1]
  	p @bingo_board[2]
  	p @bingo_board[3]
  	p @bingo_board[4]

  end
end

# Refactored Solution
class LegalBingoBoard
  def initialize(true_board)
    @bingo_board = true_board
  end

  def call
  	bingo_letters = ["B", "I", "N", "G", "O"]
  	@bingo_ball = [bingo_letters.shuffle[0]]

    if @bingo_ball[0] == "B" then @bingo_ball[1] = rand(1..15)
    elsif @bingo_ball[0] == "I" then @bingo_ball[1] = rand(16..30)
    elsif @bingo_ball[0] == "N" then @bingo_ball[1] = rand(31..45)
    elsif @bingo_ball[0] == "G" then @bingo_ball[1] = rand(46..60)
    else @bingo_ball[1] = rand(61..75)
    end #if

    p @bingo_ball

  end 

  def check

    @bingo_board[2][2] = 'X'

  	if @bingo_ball[0] == "B" then @bingo_ball[0] = 0
  	elsif @bingo_ball[0] == "I" then @bingo_ball[0] = 1
  	elsif @bingo_ball[0] == "N" then @bingo_ball[0] = 2
  	elsif @bingo_ball[0] == "G" then @bingo_ball[0] = 3
  	elsif  @bingo_ball[0] == "O" then @bingo_ball[0] = 4
  	end #if

	  if @bingo_board[0][@bingo_ball[0]] == (@bingo_ball[1])
 		  @bingo_board[0][@bingo_ball[0]] = 'X'
  	elsif @bingo_board[1][@bingo_ball[0]] == (@bingo_ball[1])
  		@bingo_board[0][@bingo_ball[0]] = 'X'
  	elsif @bingo_board[2][@bingo_ball[0]] == (@bingo_ball[1])
  		@bingo_board[0][@bingo_ball[0]] = 'X'
  	elsif @bingo_board[3][@bingo_ball[0]] == (@bingo_ball[1])
  		@bingo_board[0][@bingo_ball[0]] = 'X'
  	elsif @bingo_board[4][@bingo_ball[0]] == (@bingo_ball[1])
  		@bingo_board[0][@bingo_ball[0]] = 'X'
  	else 
  		puts "Better luck next time!"
  	end #if
  

  	p @bingo_board[0]
   	p @bingo_board[1]
  	p @bingo_board[2]
  	p @bingo_board[3]
  	p @bingo_board[4]

  end #def



end #class
#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

true_board = [[rand(1..15), rand(16..30), rand(31..45), rand(46..60), rand(61..75)],
     		  [rand(1..15), rand(16..30), rand(31..45), rand(46..60), rand(61..75)], 
   		      [rand(1..15), rand(16..30), rand(31..45), rand(46..60), rand(61..75)], 
     		  [rand(1..15), rand(16..30), rand(31..45), rand(46..60), rand(61..75)], 
     		  [rand(1..15), rand(16..30), rand(31..45), rand(46..60), rand(61..75)]]

new_game = LegalBingoBoard.new(true_board)

new_game.call
new_game.check

#Reflection
=begin 

-How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

It was a little strange because we were given points to pseudocode off of and
that threw me off. I ended up comining a few of the points and just going from 
there. That made it easier to fill out and once I took a few minutes to 
think through what I needed to do, writing the pseduocode was quick.

-What are the benefits of using a class for this challenge?

Well we have a bunch of related data and methods that could operate on their 
own (call, check), but are really a part of a bigger process (a bingo game). 
I guess it also makes it easier to have multiple instances of the class 
running. If everyone wants to play. 

-How can you access coordinates in a nested array?

You access coordinates in a nested array just like you access coordinates in
a regular array. You put array[0][1]....ect with each subsequent bracketted 
number being the next level down array.

-What methods did you use to access and modify the array?

I didn't use any methods, I just asked ruby if any integers in a column == the
integer I was looking for, then I reassigned it if it was. 

-How did you determine what should be an instance variable versus a local variable?

I had no local variables here, but I guess if I was only using it inside a 
single method I would have made one. Instance variables made much more sense 
in this situation.

-What do you feel is most improved in your refactored solution?

I didn't really focus on my existing code for my refactored solution, I looked
for ways to impliment the true bingo board and edited my code to make it work.


=end