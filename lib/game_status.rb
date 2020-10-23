# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]
all_x = ["X", "X", "X"]
all_y = ["Y", "Y", "Y"]

def won?(board)
count = 0
  until count >= 7 do
  #use count as a selecter for index of WIN_COMBINATIONS
   win_array = WIN_COMBINATIONS[count]
   board_array = []
  #retrieve indexes from board that correspond to WIN_COMBINATIONS[i]
    win_array.each do |index|
      board_array << board[index]
    end
  #if all x or y then game over (break)
  if board_array == all_x || board_array == all_y
    return win_array
  else
    #else reset board_array and increase count and try again
      board_array = []
      count += 1
  end

  end

end
