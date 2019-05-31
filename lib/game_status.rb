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
  WIN_COMBINATIONS.each{|win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X" 
      return win_combination
  else
    return false
  end
end
}
end


