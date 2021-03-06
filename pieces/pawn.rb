# encoding: utf-8
class Pawn < Piece
  
  # def direction
#     @color == :white ? -1 : 1
#   end

  def moves
    piece_moves = []
    
    if @color == :white 
      direction = [-1, 0]
      temp_move = @pos.dup
      if temp_move[0] == 6
        temp_move[0] += direction[0]
        temp_move[1] += direction[1]
        piece_moves << temp_move.dup
        temp_move[0] += direction[0]
        temp_move[1] += direction[1]
        piece_moves << temp_move.dup
      else
        temp_move[0] += direction[0]
        temp_move[1] += direction[1]
        piece_moves << temp_move.dup
      end
    end
    
    if @color == :black
      direction = [1, 0]
      temp_move = @pos.dup #@pos 6,0
      if temp_move[0] == 1
        temp_move[0] += direction[0]
        temp_move[1] += direction[1]
        piece_moves << temp_move.dup
        temp_move[0] += direction[0]
        temp_move[1] += direction[1]
        piece_moves << temp_move.dup  
      else
        temp_move[0] += direction[0]
        temp_move[1] += direction[1]
        piece_moves << temp_move.dup
      end
    end  
  
    
    piece_moves.select! do |p_move| #Can't move off the board
      p_move[0] >= 0 &&
      p_move[0] <= 7 &&
      p_move[1] >= 0 &&
      p_move[1] <= 7
    end

    piece_moves.select! do |coord| #can't move onto ally
      board[coord].nil?
    end
    
    piece_moves
  end
  
  def inspect
    color == :white ? "♙" : "♟"
  end
    
end
