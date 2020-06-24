#!/usr/bin/env ruby

puts 'Hello and welcome to Tic Tac Toe'
puts 'can the first player tell me his name :'
player1 = gets.chomp
puts "nice to meet you #{player1} can the second player tell his name :"
player2 = gets.chomp
puts "Hello #{player1} and #{player2}"
# random player will start
# print the board
# ask player to chose a number from the board
puts " #{player1} chose a number from the board"
# change the value of the number to X
puts " #{player2} chose a number from the board"
# change the value of the number to O
# check if some one win or for draw
