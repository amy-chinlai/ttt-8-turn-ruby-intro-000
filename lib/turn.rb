board = ["X", "X", "X", "X", "X", "X", "X", "X", "X"]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0,8)
end
  def position_taken?(board, index)
    if board[index] == "" || board[index] == " " || board[index] == nil
      false
    elsif
      board[index] == "X" || board[index] == "O"
      true
    else
      nil
    end
  end
  def input_to_index(input)
    input.to_i - 1
  end
  def move(board, index, value="X")
    board[index] = value
  end
  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    unless index <10
      puts "Please enter 1-9"
    end
    move(board, index, "X")
    display_board(board)
  end
