module Logic
  class CheckWinning
    attr_writer :name, :mark, :position
    def check_win(mark)
      hor1 = @position[0..2].all?(mark)
      hor2 = @position[3..5].all?(mark)
      hor3 = @position[6..8].all?(mark)
      ver1 = [@position[0], @position[3], @position[6]].all?(mark)
      ver2 = [@position[1], @position[4], @position[7]].all?(mark)
      ver3 = [@position[2], @position[5], @position[8]].all?(mark)
      dia1 = [@position[0], @position[4], @position[8]].all?(mark)
      dia2 = [@position[2], @position[4], @position[6]].all?(mark)
      result = [hor1, hor2, hor3, ver1, ver2, ver3, dia1, dia2].any?(true)
      result
    end

    def check_the_winer(player, mark)
      msg = "congratulation #{player} you win the game" if check_win(mark)
      msg
    end
  end
end
cond = CheckWinning.new
cond.name = 'fff'
cond.mark = 'O'
cond.position = ['X', 2, 3, 4, 'X', 6, 7, 8, 'X']
puts cond.check_the_winer('rida', 'X')
