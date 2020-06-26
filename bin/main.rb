#!/usr/bin/env ruby
require_relative '../lib/logic.rb'
positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def starting_of_thegame
  puts 'Hello and welcome to Tic Tac Toe'
  puts 'the game is for two players, X and O, who take turns marking the spaces in a 3×3 grid.'
  puts 'The player who succeeds in placing three of their marks in a horizontal,vertical,or diagonal row is the winner.'
  puts 'can the first player tell me his name :'
  player1 = gets.chomp
  puts "nice to meet you #{player1} can the second player tell his name :"
  player2 = gets.chomp
  puts "Hello #{player1} and #{player2}"
  players = [player1, player2].shuffle
  puts 'the game will chose a random player to start'
  puts "the first random player will be #{players[0]} you will play with X"
  puts 'this is the board of the game'
  players
end

def chose_position(player1, value, positions)
  puts "#{player1} chose you position"
  move_valid = false
  while move_valid == false
    move = CheckPosition.new
    input = gets.chomp.to_i
    if move.check_input(input) and move.check_position(positions[input - 1])
      positions[input - 1] = value
      move_valid = true
    else
      puts 'your input is not valid try chose a valid number(between 1 and 9)'
    end
  end
  positions
end

game_on = true

player = starting_of_thegame

board = Board.new
board.draw_board(positions)
current_player = [player[0], 'X']

i = 0
while game_on

  chose_position(current_player[0], current_player[1], positions)

  board.draw_board(positions)
  result = CheckWinning.new
  result.positions = positions
  win = result.check_win(current_player[1])
  draw = result.check_draw(current_player[1])
  if win
    puts result.check_the_winer(current_player[0])
    game_on = false
  elsif draw
    puts 'the game finished with a draw'

    game_on = false
  else
    i = i == 1 ? 0 : 1
    mark = i == 1 ? 'O' : 'X'

    current_player = [player[i], mark]

  end

end
