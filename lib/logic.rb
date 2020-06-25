# module Logic
class CheckWinning
  attr_writer :positions
  def check_win(mark)
    hor1 = @positions[0..2].all?(mark)
    hor2 = @positions[3..5].all?(mark)
    hor3 = @positions[6..8].all?(mark)
    ver1 = [@positions[0], @positions[3], @positions[6]].all?(mark)
    ver2 = [@positions[1], @positions[4], @positions[7]].all?(mark)
    ver3 = [@positions[2], @positions[5], @positions[8]].all?(mark)
    dia1 = [@positions[0], @positions[4], @positions[8]].all?(mark)
    dia2 = [@positions[2], @positions[4], @positions[6]].all?(mark)
    result = [hor1, hor2, hor3, ver1, ver2, ver3, dia1, dia2].any?(true)
    result
  end

  def check_the_winer(player, mark)
    msg = "congratulation #{player} you win the game" if check_win(mark)
    msg
  end

  def check_draw(mark)
    @positions.all?(String) and check_win(mark) == false
  end
  end
class CheckPosition
  attr_writer :position, :input
  def check_input
    true if @input.to_i.between?(1, 9)
  end

  def check_position
    true if @position.class == Integer
  end
end
# end
cond = CheckWinning.new
cond.positions = %w[X O X O X O O X O]
puts cond.check_the_winer('rida', 'X')
puts cond.check_draw('X')
