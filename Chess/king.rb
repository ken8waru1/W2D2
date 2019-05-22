require_relative "piece.rb"
class King < Piece
  include Stepable

  protected
  def move_diffs
    [[-1, 1],
      [-1, 0],
      [-1, -1],
      [0, -1],
      [1, -1],
      [1, 0],
      [1, 1],
      [0, 1]
    ]

  end
end