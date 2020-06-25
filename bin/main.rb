#!/usr/bin/env ruby

positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
def draw_board(positions)
  puts "#{positions[0]} | #{positions[1]} | #{positions[2]}"
  puts '----------'
  puts "#{positions[3]} | #{positions[4]} | #{positions[5]}"
  puts '----------'
  puts "#{positions[6]} | #{positions[7]} | #{positions[8]}"
end

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
  puts "the first player will be #{players[0]} you will play with X"
  puts 'this is the board of the game'
  players
end

def chose_position(player1, value, positions)
  puts "#{player1} chose you position"
  # if player wins puts "congratulation for #{player[0]}, you win"
  # checks if position hasn't been picked or chosen by another player
  # check if the output is an integer
  positions[gets.chomp.to_i - 1] = value
  positions
end

game_on = true

player = starting_of_thegame
draw_board(positions)

while game_on

  chose_position(player[0], 'X', positions)
  draw_board(positions)

  if winner # and/or draw (the exact condition in this milestone is not important)

    game_on = false

  else
    chose_position(player[1], 'O', positions)
    draw_board(positions)

  end

end
