class Piece
  attr_reader :position 

  def initialize(board, color)
    @board = board
    @color = color
    @position = [0, 0]
    current_position
  end

  def to_s
    return "P "
  end

  def current_position
    @board.grid.each do |row|
      row.each do |col|
        return @position = [row, col] if @board[row][col] == self
      end
    end
  end
end


  