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

