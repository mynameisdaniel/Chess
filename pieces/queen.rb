  
class Queen < SlidingPiece
  
  def initialize(color, pos, board_obj)
    super(color, pos, board_obj)
  end
  
  def directions
     [[1, 1], [-1, -1], [-1, 1], [1, -1],[1, 0], [0, 1], [-1, 0], [0, -1]]
  end
  
  
end