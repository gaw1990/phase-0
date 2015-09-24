# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#
# Input:
#
# Output:
#
# Steps:
#
#

# Check board for number
#
# Input: 
# @bingo_ball ["LETTER", INTEGER]
#
# Output:
# None (goal here is appropriate flow control)
#
# Steps:
# UNLESS @bingo_board.flatten.include(@bingo_ball[0]) != true
# ()

# If the number is on the board, locate it and replace it with an 'x'
#
# Input:
#
# Output:
#
# Steps:
#
#

# Display a column to the console
#
# Input:
#
# Output:
#
# Steps:
#
#

# Display the board to the console (prettily)
#
# Input:
#
# Output:
#
# Steps:
#
#

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end


end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection
