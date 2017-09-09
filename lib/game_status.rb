# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2] #top rows
[3,4,5] #middle rows
[6,7,8] #bottom row
]
end
