require_relative 'piece.rb'
class Board
  attr_reader :grid
  def initialize
    @grid = Array.new(8) { Array.new(8) }

  end

  def move_piece(start_pos, end_pos)
     

    if self[start_pos].nil? || self[end_pos].nil? || !self[start_pos].is_a?(Piece)
      raise "There is no piece at that position"
    elsif self[end_pos].is_a?(Piece)
      raise "There's already a piece at that position"
    else
      self[end_pos], self[start_pos] = self[start_pos], self[end_pos]
    end
  end

  def start_game
    (0..1).each do |row|
      (0...@grid.length).map { |col| @grid[row][col] = Piece.new }
    end

    (6..7).each do |row|
      (0...@grid.length).map { |col| @grid[row][col] = Piece.new }
    end

    true
  end

  def [](pos)
    row , col = pos
    @grid[row][col]
  end
end