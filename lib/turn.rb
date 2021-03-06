def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board[index] != "X" && board[index] != "O"
    return false
  else
    return true
  end
end

def valid_move?(board,index)
  if index >= 9 || index <0
    return false
  elsif position_taken?(board,index) == true
    return false
  else
    return true
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index) == true
    move(board,index,character = "X")
    display_board(board)
  else
    turn(board)
  end
end
