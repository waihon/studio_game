#####
# Pragmatic Studio Ruby Programming
# 14 - Modules
# There are changes in this version:
# 1. Require 'game_turn' instead of 'die'
# 2. Call GameTurn's take_turn(player)
#####
require_relative 'game_turn'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play
    puts "There are #{@players.size} player in #{@title}:"
    @players.each do |player|
      puts player
    end
    @players.each do |player|
      GameTurn.take_turn(player)
      puts player
    end
  end
end