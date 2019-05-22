module Stepable
  def moves
    all_moves = []
    move_diffs.each do |move|
      all_moves << [self.position[0] + move[0], self.position[1] + self.position[1]]
    end
    all_moves
  end  

  private
  def move_diffs
    raise "Not implemented"
  end
end

a.each do |move|
[4] pry(main)*   c << [b[0] + a[0], b[1] + a[1]]
[4] pry(main)* end  