# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],  #top row across
  [0, 3, 6],  #first column 
  [0, 4, 8],  #diagonal
  [1, 4, 7],  #middle column 
  [2, 4, 6],  #diagonal
  [2, 5, 8],  #last column
  [3, 4, 5],  #middle row
  [6, 7, 8]   #bottom row
  ]

def won?(board)
  board.each do
    return true
  else
    return false
  end
end

# Define your WIN_COMBINATIONS constant
