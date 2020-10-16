WIN_COMBINATIONS = [
   [0,1,2],
   [3,4,5],
   [6,7,8],
   [0,3,6],
   [1,4,7],
   [2,5,8],
   [0,4,8],
   [2,4,6]
 ]
 def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end
 def input_to_index(input)
    input.to_i - 1
 end
 def move(board,index,token)
    board[index] = token
  end
  def position_taken?(board,index)
      !(board[index].nil? || board[index] == " ")
    end
  def valid_move?(board,index)
        if position_taken?(board,index) == true
          false
        elsif index.between?(0, 8) && position_taken?(board,index) == false
          true
        end
      end
def turn_count(board)
    board.count{|token| token == "X" || token == "O"}
 end

 def current_player(board)
     turn_count(board).even? ? "X" : "O"
   end
def turn(board)
   puts "Please enter 1-9:"
   input = gets.strip
   if !valid_move?(board, input)
    turn(board)
  end
    move(board, input, current_player(board))
    display_board(board)
   end
