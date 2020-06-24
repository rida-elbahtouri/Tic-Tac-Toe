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
  puts 'can the first player tell me his name :'
  player1 = gets.chomp
  puts "nice to meet you #{player1} can the second player tell his name :"
  player2 = gets.chomp
  puts "Hello #{player1} and #{player2}"
  puts " #{player1} chose a number from the board"
  puts " #{player2} chose a number from the board"
  players = [player1, player2]
  start_player = players.sample
  puts "the first player will be #{start_player} you will play with X"
  puts 'this is the board of the game'
  players
end

def chose_position(player1, value, positions)
  puts "#{player1} chose you position"
  positions[gets.chomp.to_i - 1] = value
  positions
end

player = starting_of_thegame
draw_board(positions)
0..5.times do
  chose_position(player[0], 'X', positions)
  draw_board(positions)
  # check if player wins or if it draw and break from the loop
  # if player wins puts "congratulation for #{player[0]}, you win"
# checks if a player won by using a control flow or contitionals
#checks if position hasn't been picked or chosen by another player 

  chose_position(player[1], 'O', positions)
  draw_board(positions)
  # check if player wins  or if it draw and break from the loop
  # if player wins puts "congratulation for #{player[1]}, you win"
end
