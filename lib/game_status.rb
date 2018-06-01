# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8],
  [0,3,6], [1,4,7], [2,5,8],
  [0,4,8], [2,4,6]
  ]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
 #   index_1 = combo[0]
 #   index_2 = combo[1]
 #   index_3 = combo[2]
 #   position_1 = board[index_1]
 #   position_2 = board[index_2]
 #   position_3 = board[index_3]
    if position_taken?(board, combo[0]) && board[combo[1]] == board[combo[0]] && board[combo[2]] == board[combo[0]]
      return combo
    end
  end
  return false
end

def full?(board)
  board.all?{ |cell| cell == "X" || cell == "O" }
 # return status.length == 9
end

def draw?(board)
  return full?(board) && !won?(board)
end
 
def over?(board)
  return draw?(board) || won?(board)
end

def winner(board)
  if win_combo = won?(board)
    board[win_combo.first]
  end
end




