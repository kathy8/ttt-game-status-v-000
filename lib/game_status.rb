# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2] #top rows
[3,4,5] #middle rows
[6,7,8] #bottom row
[0,3,6]
[1,4,7]
[2,5,8]
[0,4,8]
[6,4,2]
]
def won?(board)
WIN_COMBINATIONS.each do |win_combination|
 win_index_1 = win_combination[0]
 win_index_2 = win_combination[1]
 win_index_3 = win_combination[2]
 position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3]

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination
  end
end
WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3]

  if position_taken?(board, win_index_1) && position_taken?(board, win_index_2) && position_taken?(board, win_index_3)
     return false
  elsif board.all? {|el| el == " " || el == nil}
    return false
  end
end
end

def full?(board)
count = 0
  board.each do |el|
    if el == "X" || el == "O"
      count+=1
    end
  end
  if count == 9
    return true
  else
    return false
  end
end

def draw?(board)
if !won?(board) && full?(board)
   return true
elsif !won?(board) && !full?(board)
   return false
elsif won?(board)
  return false
elsif won?(board) && full(board)
  return false
end
end
ef over?(board)
return true if (won?(board) || draw?(board) || full?(board))
end

def winner(board)
  if !draw?(board) && over?(board)
    board[won?(board)[1]] 
  elsif full?(board) && draw?(board) && over?(board)
    return nil 
  end 
end

winner( ["X", "O", " ", " ", " ", " ", " ", "O", "X"])



  