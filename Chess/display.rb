require_relative "board.rb"
require "colorize"
require_relative "cursor.rb"
class Display
attr_reader :cursor
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end

  def render
    system("clear")
    @board.grid.each_with_index do |row, i1|
      row.each_with_index do |piece, i2|
        if @cursor.cursor_pos == [i1,i2]
           print piece.to_s.colorize( :background => :red)
        elsif i1.even?
          print piece.to_s.colorize(:background => :light_blue)
        else
          print piece.to_s.colorize(:background => :silver)
        end
      end
      puts
    end
    nil
  end


end


if $PROGRAM_NAME == __FILE__
  board = Board.new
  display = Display.new(board)
  while true
     display.render
    display.cursor.get_input
  end
end