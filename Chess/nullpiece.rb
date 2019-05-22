require 'singleton'

class Nullpiece < Piece
  include Singleton

  def initialize
    @color = color
    @symbol = :symbol
  end
  def to_s
    return "  "
  end

end